# Get the current time
$currentDateTime = Get-Date
$a = Get-Date

# Extract seconds and milliseconds
$seconds = $currentDateTime.Second
$milliseconds = $currentDateTime.Millisecond


# Display the formatted time with colors on the same line
Write-Host $a " " -NoNewline
# Format the time with different colors
Write-Host $currentDateTime.Second -ForegroundColor Red "seconds, " -NoNewline
Write-Host $currentDateTime.Millisecond -ForegroundColor Green "milliseconds"


