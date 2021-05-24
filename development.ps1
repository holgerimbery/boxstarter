# Installazure-cli
cinst azure-cli -y

# Windows Subsystems/Features
choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#install dotnet-5.0-sdk
#cinst dotnet-5.0-sdk -y


#Install Fonts: SourceCodePro, cascadiacodepl
cinst sourcecodepro -y
cinst cascadiacodepl -y


# visualstudio code and visualstudio enterprise
# Install Visual Studio
cinst visualstudio-installer -y
cinst visualstudio2019-workload-vctools -y
cinst visualstudio2019buildtools -y
refreshenv

#Install Visual Studio Code
cinst vscode-insiders -y
refreshenv


#Install Visual Studio Code Extensions
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
refreshenv

code --force --install-extension BotFrameworkCommunity.bfc-vscode-snippets
code --force --install-extension Dedsec727.jekyll-run
code --force --install-extension dynamicwebpaige.thinking-in-data
code --force --install-extension fernandoescolar.vscode-solution-explorer
code --force --install-extension gimparm.autoopenworkspace
code --force --install-extension mohsen1.prettify-json
code --force --install-extension ms-azuretools.vscode-azurefunctions
code --force --install-extension ms-azuretools.vscode-azureresourcegroups
code --force --install-extension ms-azuretools.vscode-azurestaticwebapps
code --force --install-extension ms-python.python
code --force --install-extension ms-toolsai.jupyter
code --force --install-extension ms-vscode.azure-account
code --force --install-extension ms-vscode.azurecli
code --force --install-extension ms-vscode.powershell-preview
code --force --install-extension ritwickdey.LiveServer
code --force --install-extension sohamkamani.code-eol


#install node.js lts, python3
#cinst nodejs-lts -y
cinst python3 -y
#cinst yarn -y

#Install Git
cinst git --params '"/GitAndUnixToolsOnPath /WindowsTerminal /SChannel"' -y
refreshenv
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
refreshenv
git config --global credential.helper wincred
git config --global --bool pull.rebase true


#Install Github-Desktop
cinst github-desktop -y


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
cinst nugetpackageexplorer -y
if (test-path (Join-Path ([Environment]::GetFolderPath("Desktop")) "NugetPackageExplorer.exe.lnk")) {
    Move-Item (Join-Path ([Environment]::GetFolderPath("Desktop")) "NugetPackageExplorer.exe.lnk") (Join-Path ([Environment]::GetEnvironmentVariable("AppData")) "Microsoft\Windows\Start Menu\Programs\NugetPackageExplorer.lnk")
}
#Write-host "Please install: `nhttps://github.com/microsoft/BotFramework-Composer-Nightlies,`nhttps://github.com/microsoft/BotFramework-Emulator"
