$envFile = Join-Path $PSScriptRoot ".env"

if (-not (Test-Path $envFile)) {
    Write-Error "ERROR: .env file not found at $envFile`nCreate it with: TMDB_API_TOKEN=your_token"
    exit 1
}

$token = $null
foreach ($line in Get-Content $envFile) {
    if ($line -match '^\s*#' -or [string]::IsNullOrWhiteSpace($line)) { continue }
    $parts = $line -split '=', 2
    if ($parts[0].Trim() -eq 'TMDB_API_TOKEN') {
        $token = $parts[1].Trim()
    }
}

if (-not $token) {
    Write-Error "ERROR: TMDB_API_TOKEN not set in .env"
    exit 1
}

Write-Host "Running integration tests..."
flutter test test/integration_test.dart --dart-define=TMDB_API_TOKEN="$token"
