# Path to the batch file
$batchFilePath = "lf.bat"

# Function to check if a file has LF line endings
function Test-LineEndings {
    param (
        [string]$FilePath
    )
    
    # Read the content of the file
    $content = Get-Content -Raw -Path $FilePath

    # Check for LF line endings
    $hasLF = $content -match "`n" -and -not ($content -match "`r`n")

    return $hasLF
}

# Check if the batch file has LF line endings
if (Test-LineEndings -FilePath $batchFilePath) {
    Write-Output "The file has LF line endings."
} else {
    Write-Output "The file does not have LF line endings."
}