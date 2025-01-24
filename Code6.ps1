
# Prompt the user for their name

$userName = Read-Host "Please enter file name"

# Define the file name
$fileName = "C:\Users\aagam\Desktop\Powershell\$userName.txt"

# Check if the file already exists
if (Test-Path $fileName) 
{
    # Prompt the user to confirm if they want to delete the word list
    Write-Host "Do you want to remove the word list ? (Yes/No)"
    $userResponse = Read-Host

    if ($userResponse -eq "Yes" -or $userResponse -eq "yes") 
    {
        # If the user selects "yes", delete the file and inform the user in dark red text.
        Remove-Item $fileName
        $a = Split-Path $fileName -Leaf

        Write-Host "File $a has been deleted." -ForegroundColor DarkRed
    } 
    else 
    {
        # If the user selects "no" or any other input, inform the user that the file will not be deleted in red text.
        Write-Host "the file will not be deleted." -ForegroundColor Red
        exit
    }
}
else
{
        $b = Split-Path $fileName -Leaf
        # Notify the user that the name has been stored
        Write-Host "Word List file name $b not found." -ForegroundColor DarkRed
}
