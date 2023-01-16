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

$eesnimi = Read-Host "Palun sisestage oma eesnimi"
$perenimi = Read-Host "Palun sisestage oma perenimi"
$taisnimi = "$eesnimi.$perenimi"
$taisnimi = Translit($taisnimi)

if (Get-ADUser -F {SamAccountName -eq $taisnimi}) { 
    Remove-ADUser -identity $taisnimi 
    Write-host "$taisnimi konto on nuud kustutatud systeemist" }
else {
    Write-host "Sellist kasutajat ei ole olemas"
    }
