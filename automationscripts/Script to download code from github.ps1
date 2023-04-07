# Get github URL and the local folder path where code should be downloaded 

# Use a variable to hold git hub URL 
$gitHubURL = Read-host "Enter Git Hub URL:"

# Use a variable to hold local folder
$localFolder = Read-Host "Enter lcoal folder path where code needs to be downloaded:"


# Use Set-Location powershell command to set local folder 
Write-Host -ForegroundColor green "***** Setting folder to download the code *****  "
Set-Location $localFolder

# Use Git clone command to download the code 
Write-Host -ForegroundColor green "***** Downloading the code from Github*****  "
git clone $gitHubURL $localFolder

# Use a variable to hold feature branch name from where the code to be downloaded
$branchName = Read-Host "Enter remote branch name that  needs to be downloaded:"

# Pull code from the remote branch as given by the user
Write-Host -ForegroundColor green "***** Pulling the code from Github branch - $branchName *****  "
git pull origin  $branchName

