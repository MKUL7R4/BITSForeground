$time = (get-date).Addminutes(1).ToString('HH:mm:ss')
schtasks /create /RU SYSTEM /f /tn "BITS Foreground" /tr "powershell.exe -command Import-Module BitsTransfer (Get-BitsTransfer -AllUsers | Set-BitsTransfer -Priority Foreground)" /sc once /st $time;
schtasks /run /tn "BITS Foreground";
schtasks /delete /f /tn "BITS Foreground" 