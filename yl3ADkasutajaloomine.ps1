
function Translit {
    param(
    	[string] $inputstring
     	 )
  	$Translit = @{
     	[char]'ä' = "a"
     	[char]'õ' = "o"
     	[char]'ü' = "u"
     	[char]'ö' = "o"
     	}
     	$outputstring=""
     	foreach ($character in $inputCharacter = $inputstring.ToCharArray())
    	{
     	if ($Translit[$character] -cne $Null){
     	$outputString += $Translit[$character]
     	} else {
        	$outputString += $character
    	}
     	 }
        Write-Output $outputstring
        }

$eesnimi = Read-Host "Palun sisestage kasutaja eesnimi"
$perenimi = Read-Host "Palun sisestage kasutaja perenimi"
$parool = Read-Host "Palun sisestage kasutaja parool" | ConvertTo-SecureString -AsPlainText -Force
$taisnimi = "$eesnimi.$perenimi"
$taisnimi = Translit($taisnimi)
$adnimi = $taisnimi + "@sv-kool.local"
$kirjeldus = "$eesnimi $perenimi windowsi konto"

if (Get-ADUser -F {SamAccountName -eq $taisnimi}) 
    { 
    Write-host "Kasutaja nimega $taisnimi on juba olemas - ei saa seda lisada" 
    }
    else 
    {
    New-ADUser -Name $taisnimi -DisplayName $taisnimi -GivenName $taisnimi -Title $taisnimi -UserPrincipalName $adnimi -AccountPassword (ConvertTo-SecureString $parool -AsPlainText -force) -Enabled $true 
    Write-host "Kasutaja $taisnimi edukalt lisatud systeemi"
    }
