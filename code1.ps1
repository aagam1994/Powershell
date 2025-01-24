$name = Read-Host "Please enter your name"


$filename = 'C:\Users\aagam\Desktop\Powershell\'+"$name.txt"

    $name | Set-Content -Path $filename


   Write-Host "Name '$name' has been stored in $filename."

# Check if the file already exists
if (Test-Path $filename) 
{
    Write-Host "The file $filename already exists."
    $deleteFile = Read-Host "Do you want to delete it? (Type 'yes' to delete, or any other key to quit)"
    if ($deleteFile -eq "yes") 
    {
        Remove-Item $filename
        Write-Host "The file has been deleted." -ForegroundColor White -BackgroundColor Red
    }
    else 
    {
        Write-Host "Script will halt. No further actions will be performed." -ForegroundColor Red
        exit
    }
    

}
else
{
    Write-Host "Name '$name' has been stored in $filename."
}
