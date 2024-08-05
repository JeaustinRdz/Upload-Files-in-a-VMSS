# Upload-Files-in-a-VMSS

Documentation used:
1- https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-blobs-upload?toc=%2Fazure%2Fstorage%2Fblobs%2Ftoc.json&bc=%2Fazure%2Fstorage%2Fblobs%2Fbreadcrumb%2Ftoc.json#upload-a-file
2- https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10?tabs=dnf#use-in-a-script

Steps to generate a SasToken:
1- Navigate to your storageAccount
2- Go to container and click in your container
3- Click in Shared access tokens
4- Create a new token with the premission "Read" , "Add" , "Create"
5- Copy the SasToken
