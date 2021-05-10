# Deployment of a fresh Windows10

## install boxstarter and chocolatey

Install BoxStarter in a elevated powershell
* set ExecutionPolicy to Unrestricted
```
Set-ExecutionPolicy Unrestricted   
```

* install Boxstarter and chocolatey
```
  . { Invoke-WebRequest -useb http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; get-boxstarter -Force
```

## run deployment script 
* standard-install: boxstarter.ps1
* personal addons (check and modify before deployment): development.ps1, addons.ps1, name.ps1 

```
  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/holgerimbery/boxstarter/master/boxstarter.ps1 -DisableReboots

  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/holgerimbery/boxstarter/master/addons.ps1 -DisableReboots

  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/holgerimbery/boxstarter/master/development.ps1 -DisableReboots

  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/holgerimbery/boxstarter/master/name.ps1 -DisableReboots
```
