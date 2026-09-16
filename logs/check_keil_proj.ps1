# Check all uvprojx and uvmpw files for XML validity
$projectDir = "非视觉感知模组工程文件夹\Prj1V0\projects\ble_peripheral_ht32f675x5\project"

Write-Host "=== Checking all project files ===" -ForegroundColor Cyan

# Check uvprojx files
Get-ChildItem -Path $projectDir -Recurse -Filter "*.uvprojx" | ForEach-Object {
    $file = $_.FullName
    try {
        $content = Get-Content $file -Raw -ErrorAction Stop
        [System.Xml.XmlDocument]$doc = New-Object System.Xml.XmlDocument
        $doc.LoadXml($content)
        $targets = $doc.SelectNodes("//Target")
        Write-Host "[OK]  $($_.Name)  ($($targets.Count) targets)" -ForegroundColor Green
    } catch {
        Write-Host "[FAIL] $($_.Name) - $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=== Checking uvmpw workspace file ===" -ForegroundColor Cyan

Get-ChildItem -Path $projectDir -Filter "*.uvmpw" | ForEach-Object {
    $file = $_.FullName
    try {
        $content = Get-Content $file -Raw -ErrorAction Stop
        [System.Xml.XmlDocument]$doc = New-Object System.Xml.XmlDocument
        $doc.LoadXml($content)
        Write-Host "[OK]  $($_.Name)" -ForegroundColor Green
    } catch {
        Write-Host "[FAIL] $($_.Name) - $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=== Checking uvoptx files ===" -ForegroundColor Cyan

Get-ChildItem -Path $projectDir -Recurse -Filter "*.uvoptx" | ForEach-Object {
    $file = $_.FullName
    try {
        $content = Get-Content $file -Raw -ErrorAction Stop
        [System.Xml.XmlDocument]$doc = New-Object System.Xml.XmlDocument
        $doc.LoadXml($content)
        Write-Host "[OK]  $($_.Name)" -ForegroundColor Green
    } catch {
        Write-Host "[FAIL] $($_.Name) - $($_.Exception.Message)" -ForegroundColor Red
    }
}
