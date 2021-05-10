#Install Balena Etcher
cinst etcher -y


#Install DYMO Connect
cinst dymo-connect -y


#Install Adobe-Acrobat-Reader
cinst adobereader -y

#MS Office 
choco install Office365Business -params '"/productid:O365HomePremRetail "' 

#Install 1password 
cinst 1password -y


#Install 3cx
cinst 3cx -y


#Install autodesk-fusion 
cinst autodesk-fusion360 -y


#Install electrum
cinst electrum -y


#Install protonvpn
cinst protonvpn -y


#Install prusaslicer
cinst prusaslicer -y


#Install signal
cisnt signal -y


#Install sonos-controler
cisnt sonos-controller -y


#Install spotify
cisnt spotify -y


#Install vnc-viewer
cisnt vnc-viewer -y


#Install winscp
cisnt winscp -y


#Install Teamviewer
choco install teamviewer 


# Move library to OneDrive
Move-LibraryDirectory "My Video" "$env:UserProfile\OneDrive\Video" -DoNotMoveOldContent 
Move-LibraryDirectory "My Pictures" "$env:UserProfile\OneDrive\Pictures" -DoNotMoveOldContent 
Move-LibraryDirectory "Desktop" "$env:UserProfile\OneDrive\Desktop" -DoNotMoveOldContent 
Move-LibraryDirectory "Personal" "$env:UserProfile\OneDrive\Dokumente" -DoNotMoveOldContent 
Move-LibraryDirectory "My Music" "$env:UserProfile\OneDrive\Music" -DoNotMoveOldContent 
Move-LibraryDirectory "Downloads" "$env:UserProfile\OneDrive\Downloads" -DoNotMoveOldContent
