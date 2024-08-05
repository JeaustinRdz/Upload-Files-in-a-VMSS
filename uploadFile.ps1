# Download the az copy (need to be run only 1)
Invoke-WebRequest -Uri 'https://azcopyvnext.azureedge.net/release20220315/azcopy_windows_amd64_10.14.1.zip' -OutFile 'azcopyv10.zip'

# Extract az copy (need to be run only 1)
Expand-archive -Path '.\azcopyv10.zip' -Destinationpath '.\'

# Get the azcopy.exe
$AzCopy = (Get-ChildItem -path '.\' -Recurse -File -Filter 'azcopy.exe').FullName

#Navigate to the agent folder
cd C:\agent

#Compress the _diag folder
Compress-Archive -Path "_diag" -DestinationPath ./diag   

#Copy the file into a storage account 
& $AzCopy copy 'Path to the diag.zip' 'https://mystorageaccount.blob.core.windows.net/mycontainer/diag.zip?SasKey'
