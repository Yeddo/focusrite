Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd.exe /c net stop Audiosrv && net start Audiosrv", 0, True
