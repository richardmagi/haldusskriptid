$ErrorActionPreference = 'SilentlyContinue'
#Kui üks käskudest skriptis ei tööta, tänu "SilentlyContinue'le", läheb ikka skript edasi ja ei kirjuta powershelli oma läbi kukkumisest
$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"
#$eesnimi ja $perenimi küsivad kasutajalt oma eesnime ja perenime, kasutaja vastused salvestatakse konto ees ja perenimena
$taisnimi = "$eesnimi.$perenimi"
#eesnimi ja perenimi kombineeritud ühte, konto nimi
$kirjeldus = "$eesnimi $perenimi windowsi konto on nuud kustutatud"
#Uue kasutaja lühikirjeldus



net user $taisnimi
#kontrollib, kas selline kasutaja on olemas
if ($? -eq $true) { 
    Remove-LocalUser -Name $taisnimi 
    Write-host $kirjeldus }
#kui on on olemas, siis kustutab kasutaja $tais.nimi
else {
    Write-host "Sellist kasutajat ei ole olemas"
    }
#kui eelmine käsk kukkus läbi kirjutab, et "sellist kasutaja ei ole olemas", sest realselt selline kasutaja puudub.
