$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"

#$eesnimi ja $perenimi küsivad kasutajalt oma eesnime ja perenime, kasutaja vastused salvestatakse konto ees ja perenimena

$parool = "Parool1!" | ConvertTo-SecureString -AsPlainText -Force

#Parool1! on läbi selle skripti tehtud konto parool

$taisnimi = "$eesnimi.$perenimi"

#eesnimi ja perenimi kombineeritud ühte, et teha kontole nimi

$kirjeldus = "$eesnimi $perenimi windowsi konto"

#Uue kasutaja lühikirjeldus

New-LocalUser -Name $taisnimi -Password $parool -FullName $taisnimi -Description $kirjeldus
