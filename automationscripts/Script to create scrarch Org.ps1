# Get org name and org life span from the caller 

# Use a variable to hold Org name 
$OrgName = Read-host "Enter Org Name:"

# Use a variable to hold Org Life Span
$OrgLifeSpan = Read-Host "Enter Org Life Span:"

# Display Org Name and Org Life Span
Write-Host -ForegroundColor green "Org Name  :: $OrgName"
Write-Host -ForegroundColor green "Org Duration  :: $OrgLifeSpan"

# Create a scratch Org

Write-Host -ForegroundColor green "**** Creating Scratch Org ****"
sfdx force:org:create -a $OrgName -d $OrgLifeSpan -f project-scratch-def.json -s --loglevel debug

if($LASTEXITCODE -ne 0) # if the last statement was successful then powershell returns 0, else in case of error it returns -1
{
    exit 1 # quit executing the reminder of the script
} 

# Generate password for the default user
Write-Host -ForegroundColor green "**** Generating password for Scratch Org User ****"
sfdx force:user:password:generate -u $OrgName

# Show login details of the org
Write-Host -ForegroundColor green "**** Showing login details of Scratch Org ****"
sfdx force:user:display -u $OrgName


# Show login details of the org
Write-Host -ForegroundColor green "**** Opening Scratch Org ****"
sfdx force:org:open -u $OrgName