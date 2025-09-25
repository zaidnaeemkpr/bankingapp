$content = Get-Content (Join-Path $PSScriptRoot "..\index.html")
if ($content -notmatch "Welcome to Banking App") {
    Write-Error "index.html missing expected text"; exit 1
}
Write-Host "index.html text OK"; exit 0
