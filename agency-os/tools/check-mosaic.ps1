$ErrorActionPreference = "Stop"

$toolRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$agencyRoot = Resolve-Path (Join-Path $toolRoot "..")
$workspaceRoot = Resolve-Path (Join-Path $agencyRoot "..")

$failures = New-Object System.Collections.Generic.List[string]

function Add-Failure($message) {
  $script:failures.Add($message) | Out-Null
}

function Test-RequiredFile($relativePath) {
  $path = Join-Path $agencyRoot $relativePath
  if (-not (Test-Path -LiteralPath $path)) {
    Add-Failure "Missing required file: $relativePath"
  }
}

$requiredFiles = @(
  "HERMES-DEBUG-MAP.md",
  "MOSAIC-PLUG-AND-PLAY.md",
  "LANGDOCK-AGENT-CARDS.md",
  "MOSAIC-WORKBENCH-PAPER.md",
  "MOSAIC-REPO-SETUP-GUIDE.md",
  "MOSAIC-BACKGROUND-IMPROVEMENT-LOOP.md",
  "MOSAIC-PROJECT-LOGIC-CHECK.md",
  "agents/hermes-prompter/hermes-prompter-de-v1.md",
  "agents/hermes-admin/hermes-admin-de-v1.md",
  "AIRTABLE-MEMORY-SCHEMA.md",
  "airtable/mvp-knowledge-seed.md",
  "airtable/pilot-knowledge-intake-template.md",
  "evals/hermes-eval-cases.json",
  "training/hermes-swarm-training-cases.json"
)

foreach ($file in $requiredFiles) {
  Test-RequiredFile $file
}

$jsonFiles = @(
  "evals/hermes-eval-cases.json",
  "evals/runs/hermes-two-agent-mvp-test-run-2026-05-13.json",
  "training/hermes-swarm-training-cases.json"
)

foreach ($file in $jsonFiles) {
  $path = Join-Path $agencyRoot $file
  if (Test-Path -LiteralPath $path) {
    try {
      $json = Get-Content -Raw -LiteralPath $path | ConvertFrom-Json
      if ($file -eq "evals/hermes-eval-cases.json" -and $json.Count -ne 11) {
        Add-Failure "Expected 11 eval cases, found $($json.Count)."
      }
    }
    catch {
      Add-Failure "Invalid JSON: $file"
    }
  }
}

$textFiles = Get-ChildItem -LiteralPath $agencyRoot -Recurse -File -Include *.md,*.json,*.ps1
foreach ($file in $textFiles) {
  $matches = Select-String -LiteralPath $file.FullName -Pattern "[^\x00-\x7F]" -AllMatches
  if ($matches) {
    Add-Failure "Non-ASCII text found in: $($file.FullName)"
  }
}

$criticalFiles = @(
  "README.md",
  "HERMES-DEBUG-MAP.md",
  "MOSAIC-PLUG-AND-PLAY.md",
  "LANGDOCK-AGENT-CARDS.md",
  "MOSAIC-REPO-SETUP-GUIDE.md",
  "FINAL-LAUNCH-CHECKLIST.md",
  "MVP-TESTPLAN.md",
  "MVP-ROADMAP.md",
  "SETUP-SEQUENCE.md",
  "HERMES-PILOT-DEMO-SCRIPT.md",
  "HERMES-DEMO-RUN-CURRENT-MVP.md",
  "airtable/mvp-knowledge-seed.md"
)

$forbiddenPhrases = @(
  "Hermes Prompter",
  "Hermes Admin",
  "Hermes Network",
  "Hermes Keyfacts",
  "Hermes for Marketing",
  "Content Assistant in Langdock",
  "Brand QA in Langdock",
  "Agency Director in Langdock",
  "Director Routing",
  "20 gute Agenten"
)

foreach ($relativeFile in $criticalFiles) {
  $path = Join-Path $agencyRoot $relativeFile
  if (Test-Path -LiteralPath $path) {
    $content = Get-Content -Raw -LiteralPath $path
    foreach ($phrase in $forbiddenPhrases) {
      if ($content.Contains($phrase)) {
        Add-Failure "Forbidden MVP phrase '$phrase' found in $relativeFile"
      }
    }
  }
}

$privacyPattern = "(danie|daniel|@[a-z0-9._%+-]+\.[a-z]{2,}|\+49|C:\\Users\\)"
$privacyMatches = Get-ChildItem -LiteralPath $workspaceRoot -Recurse -File |
  Where-Object {
    $_.FullName -notmatch "\\.git\\" -and
    $_.FullName -notmatch "\\node_modules\\" -and
    $_.Name -ne "check-mosaic.ps1"
  } |
  Select-String -Pattern $privacyPattern -CaseSensitive:$false

if ($privacyMatches) {
  Add-Failure "Potential private identifier found. Run rg privacy scan for details."
}

if ($failures.Count -gt 0) {
  Write-Host "Mosaic self-check failed:" -ForegroundColor Red
  foreach ($failure in $failures) {
    Write-Host "- $failure" -ForegroundColor Red
  }
  exit 1
}

Write-Host "Mosaic self-check passed." -ForegroundColor Green
Write-Host "Required files present."
Write-Host "JSON valid."
Write-Host "Eval cases: 11."
Write-Host "ASCII clean."
Write-Host "MVP naming clean."
