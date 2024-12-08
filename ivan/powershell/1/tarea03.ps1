$UserFolder =  [System.Environment]:: GetFolderPath('UserProfile')
Get-ChildItem -Path $UserFolder -Force