#Erstellt am 11.03.2021 - Hense, Philipp - Zentrale IT NES


#Variablen
$delete_teams_folder = $env:Userprofile+"\AppData\Roaming\Microsoft\Teams"
$start_teams = $env:Userprofile+"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Microsoft Teams.lnk"
$start_outlook = $env:SystemDrive+"Program Files\Microsoft Office\root\Office16\OUTLOOK.exe"

#Schließt den Prozess Outlook und Teams
Stop-Process -Name "OUTLOOK" -Force
sleep 1
Stop-Process -Name "Teams" -Force

sleep 2

#Löscht den Ordner Teams im Userprofil
Remove-Item -Path $delete_teams_folder -force -recurse

sleep 5

#Starte Teams und Outlook neu

Start-Process $start_teams
Start-Process $start_outlook