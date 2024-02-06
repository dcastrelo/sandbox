Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# choco install googlechrome -y
choco install vscodium -y
choco install winrar -y
choco install bitvise-ssh-client -y
choco install bitvise-ssh-server -params '"/InstallLocation=C:\temp"' '"/acceptEULA"' 
pause


# Make sure you run PowerShell as an administrator

# Enable the FTP Server feature
Enable-WindowsOptionalFeature -Online -FeatureName "IIS-FTPServer" -All

# Configure FTP authorization rules to allow all users
Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\FTP\Server" -Name "AllowAnonymous" -Value "true"

# Enable FTP service
Set-Service -Name FTPsvc -StartupType Automatic
Start-Service -Name FTPsvc


pause
clear
ipconfig
pause
