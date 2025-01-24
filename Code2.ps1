
# Prompt the user for their name
$userName = Read-Host "Please enter your name"

# Define the file name
$fileName = "C:\Users\aagam\Desktop\Powershell\$userName.txt"

# Check if the file already exists
if (Test-Path $fileName) 
{
    # Prompt the user to confirm if they want to delete the file
    Write-Host "The file $fileName already exists. Do you want to delete it? (Yes/No)"
    $userResponse = Read-Host

    if ($userResponse -eq "Yes" -or $userResponse -eq "yes") 
    {
        # If the user confirms, delete the file
        Remove-Item $fileName
        Write-Host "File $fileName has been deleted." -ForegroundColor White -BackgroundColor Red
    } 
    else 
    {
        # If the user declines, inform and halt the script
        Write-Host "Script will halt. No further actions will be taken." -ForegroundColor Red
        exit
    }
}
else
{

# Write the user's name to the file
Out-File -FilePath $fileName -InputObject $userName

# Notify the user that the name has been stored
 Write-Host "Your name has been stored in $fileName"
}


# Read the user's name from the file
$storedName = $(Get-Content $fileName)


# Read File name for welcome message
$a = Split-Path $fileName -Leaf

# Display a welcome message
Write-Host "Greetings $storedName!" $a -ForegroundColor Green