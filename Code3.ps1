
# Prompt the user for their name
$userName = Read-Host "Please enter File Name"

# Define the file name
$fileName = "C:\Users\aagam\Desktop\Powershell\$userName.txt"

# Initialize a counter to keep track of the words
$wordCount = 1

# Loop to ask the user for seven words
for ($i = 1; $i -le 7; $i++) {
    $prompt = "Enter word #$wordCount "
    $userWord = Read-Host $prompt

    # Write the user's word to the file
    Add-Content $filename $userWord

    
    # Increment the word count
    $wordCount++
}

# Close the file
$stream.Close()

# Display a message to inform the user that the words have been written to the file
Write-Host "The words have been written to $fileName" -ForegroundColor Green
