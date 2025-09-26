# Simple smoke test for BankingApp
Write-Output "Running smoke test for BankingApp..."

# Check if index.html exists
if (Test-Path "index.html") {
    Write-Output "✅ index.html found."
} else {
    Write-Error "❌ index.html is missing!"
    exit 1
}

# Simple content check (optional)
$content = Get-Content "index.html"
if ($content.Length -gt 0) {
    Write-Output "✅ index.html is not empty."
} else {
    Write-Error "❌ index.html is empty!"
    exit 1
}

Write-Output "🎉 Smoke test passed successfully!"
exit 0
