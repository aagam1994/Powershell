<#
.Version
    5.1.22621.2506 
.Author
    Aagam Shah
.Synopsis
    Calculator Function created for evaluating Math expression

.Description
    In this code, we are accepting inputs from user to evaluate a math expression that is capable of handling both decimal numbers and integers.
#>



#List of Maths expression Menu, I selected these menu for maths calculation 

#Enter the number from 1 to 5 from the menu
[int]$z = Read-host "Enter any number from 1 to 5 for Calculation"

#defining Mathvalues function with menu for calculation
Function Get-Mathvalues
{
    param($z) 
    #defining Menu
        Write-Host "List of Maths Expression and Random Maths Calcuations"
        Write-Host "1. Addition"
        Write-Host "2. Subtraction"
        Write-Host "3. Multiplication"
        Write-Host "4. Division"
        Write-Host "5. Random Math Calculation"
    

    if($z -eq 1)
    {
        # Addition
        [float]$input1 = Read-Host "input value1"
        [float]$input2 = Read-Host "input value2"

        $result = $input1 + $input2
        Write-Host "Addition of $input1  + $input2 = $result" -ForegroundColor Green
    }
    elseif($z -eq 2)
    {
        # Subtraction
        [float]$input1 = Read-Host "input value1"
        [float]$input2 = Read-Host "input value2"
        $result = $input1  - $input2
        Write-Host "Subtraction of $input1  - $input2  = $result" -ForegroundColor Red
    }
    elseif($z -eq 3)
    {
        # Multiplication

        [float]$input1 = Read-Host "input value1"
        [float]$input2 = Read-Host "input value2"
        $result = $input1  * $input2 
        Write-Host "Multiplication of $input1  * $input2 = $result" -ForegroundColor Gray
    }
    elseif($z -eq 4)
    {
        # Division

        [float]$input1 = Read-Host "input value1"
        [float]$input2 = Read-Host "input value2"
        $result = $input1 / $input2
        Write-Host "Division of $input1 / $input2 = $result" -ForegroundColor Yellow
    }
    elseif($z -eq 5)
    {

    #Fetching Random number
        $random =  Get-Random -InputObject 1, 2, 3, 4, 5
        Write-Host "Random Number is $random" -BackgroundColor Red -ForegroundColor Cyan
    
    #defining random function for random calculation
        Function Get-Mathfunction
        {
         Param ($random)

         If($random -eq 1)
         {
        Write-Host "How many quarters are in d dollars?" -ForegroundColor Yellow
        $d = Read-Host "the value of d to calculate"
            [float]$x=    $d/0.25
            Write-Host "Answer is $x quarters" -ForegroundColor Yellow
    }
         elseIf($random -eq 2)
         {
        Write-Host "How many minutes are in h hours?" -ForegroundColor Cyan
         [int]$h = Read-Host "the value of h to calculate"
         [int]$a=    $h*60
         Write-Host "Answer is $a minutes" -ForegroundColor Cyan
    }
         elseIf($random -eq 3)
         {
       Write-Host "How many hours are in d days?" -ForegroundColor Green
        [int]$b = Read-Host "the value of d to calculate"
            [int]$c=    $b*24
            Write-Host "Answer is $c hours" -ForegroundColor Green
    }
         elseIf($random -eq 4)
         {
        Write-Host "How many days are in y years?" -ForegroundColor Gray
         [int]$e = Read-Host "the value of y to calculate"
            [int]$f=    $e*365
            Write-Host "Answer is $f days" -ForegroundColor Gray
    }
         elseIf($random -eq 5)
         {
        Write-Host "How many months are in n years?"  -ForegroundColor Magenta
         [int]$g = Read-Host "the value of n to calculate"
            [int]$i=    $g*12
            Write-Host "Answer is $i quarters" -ForegroundColor Magenta
    }
         Else
         {
        Write-Host "Invalid Input" -BackgroundColor Red
    }
        }
        Get-Mathfunction -random $random
    }
    else
    {
        Write-Host "Invalid Input" -BackgroundColor Red
    }
}
Get-Mathvalues -z $z 
