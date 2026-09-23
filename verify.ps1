$ErrorActionPreference = 'Stop'

$expected = 'Hello from desktop Codex'
$filePath = Join-Path $PSScriptRoot 'hello.txt'

if (-not (Test-Path -LiteralPath $filePath)) {
    throw 'FAIL: hello.txt does not exist'
}

$actual = (Get-Content -LiteralPath $filePath -Raw).TrimEnd("`r", "`n")
if ($actual -ne $expected) {
    throw "FAIL: hello.txt content is incorrect. Expected '$expected', got '$actual'"
}

Write-Output 'PASS: hello.txt is correct'
