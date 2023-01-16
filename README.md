# Haldusskriptid

Repositooriumis sisalduvad skriptid on mõeldud hõlbustamaks kontode haldamist kasutades **Windows PowerShelli**.
Repositooriumites olevate skriptide abil on võimalik teha järgmist:

* Luua kasutajakontosid
* Kustutada kasutajakontosid
* Luua kontosid AD-sse
* Kustutada kontosid AD-st

# Paigaldusjuhised

Skriptide paigaldamiseks on kaks võimalust.

1. Laadida alla repositooriumis olevad failid
2. Allalaetud failid paigaldada samasse kausta, kust kasutad PowerShelli, ning need sealt käivitada

**VÕI**

1. Liikuda PowerShelli siseselt kausta, kuhu skriptid on salvestatud.
2. Aktiveerida soovitud skript kasutades käsku `.\(skripti_nimi).ps1`

Skript ei pruugi töötada, kui grupipoliitika ei ole õigesti sätestatud.
Selleks, et end sellega kurssi viia saab PowerShellis sisestada käsu `Get-ExecutionPolicy`

Juhul, kui execution policy on "restricted", võib probleemi lahendamiseks kasutada käsku `Set-ExecutionPolicy remotesigned`

# Litsents
Projekt on litsenseeritud MIT litsensi all. Litsensi detaile on võimalik näha LICENSE.md failist.
