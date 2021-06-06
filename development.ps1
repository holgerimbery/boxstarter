# Installazure-cli
cinst azure-cli -y

# Windows Subsystems/Features
choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsfeatures
Write-host "install https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" 
Write-host "wsl --set-default-version 2"

#install dotnet-5.0-sdk
#cinst dotnet-5.0-sdk -y


#Install Fonts: SourceCodePro, cascadiacodepl
cinst sourcecodepro -y
cinst cascadiacodepl -y


# visualstudio code and visualstudio enterprise
# Install Visual Studio
#cinst visualstudio-installer -y
#cinst visualstudio2019-workload-vctools -y
#cinst visualstudio2019buildtools -y
#refreshenv

#Install Visual Studio Code
cinst vscode-insiders -y
refreshenv

#Install git-cli
cinst gh -y

#Install Visual Studio Code Extensions
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
refreshenv

#code --force --install-extension BotFrameworkCommunity.bfc-vscode-snippets
code-insiders --force --install-extension holgerimbery.123code

#install node.js lts, python3
#cinst nodejs-lts -y
#cinst python3 -y
#cinst yarn -y

#Install Git
cinst git --params '"/GitAndUnixToolsOnPath /WindowsTerminal /SChannel"' -y
refreshenv
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
refreshenv
git config --global credential.helper wincred
git config --global --bool pull.rebase true


#Install Github-Desktop
#cinst github-desktop -y


#Installing posh-git and oh-my-posh
Install-Module -Name posh-git
Update-Module -Name posh-git
Install-Module -Name oh-my-posh
Update-Module -Name oh-my-posh

#Install ruby
#choco install ruby --version=2.7.0.1 -y 
#cinst msys2 --params "/NoUpdate" -y
#refreshenv
#Write-host "Please install jekyll: `nridk install `nrefreshenv `ngem install jekyll bundler`n`nand execute within project folder:`nbundle install`nbundle exec jekyll serve`n"


#Install NuGet Package Explorer
#cinst nugetpackageexplorer -y
#if (test-path (Join-Path ([Environment]::GetFolderPath("Desktop")) "NugetPackageExplorer.exe.lnk")) {
#    Move-Item (Join-Path ([Environment]::GetFolderPath("Desktop")) "NugetPackageExplorer.exe.lnk") (Join-Path ([Environment]::GetEnvironmentVariable("AppData")) "Microsoft\Windows\Start Menu\Programs\NugetPackageExplorer.lnk")
#}
#Write-host "Please install: `nhttps://github.com/microsoft/BotFramework-Composer-Nightlies,`nhttps://github.com/microsoft/BotFramework-Emulator"
