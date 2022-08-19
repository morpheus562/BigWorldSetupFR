If WScript.Arguments.Named.Exists("elevated") = False Then
  CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
  WScript.Quit
Else
  Set oShell = CreateObject("WScript.Shell")
  oShell.CurrentDirectory = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
  Set objFSO = CreateObject("Scripting.FileSystemObject")
  If ((objFSO.FolderExists(".git")) And (objFSO.FolderExists("Git"))) Then
    Const ForReading = 1
    InstallationInProgress = False
    Dim strSearchFor
    strSearchFor = "=0"
    Set objFSO = CreateObject("Scripting.FileSystemObject")
    setupFilePath = "App\Config\Setup.ini"
    Set objTextFile = objFSO.OpenTextFile(setupFilePath, ForReading)
    do until objTextFile.AtEndOfStream
        strLine = objTextFile.ReadLine()
        If InStr(LCase(strLine), LCase(strSearchFor)) <> 0 then
            InstallationInProgress = True
        End If
    loop
    objTextFile.Close
    If InstallationInProgress = False Then
	  Set wshShell = WScript.CreateObject ("wscript.shell")
      wshShell.Run "%comspec% /k "".\Git\cmd\git.exe"" fetch & .\Git\cmd\git.exe reset --hard origin/master & exit", 1, True
    End If
  Else
	Set wshShell = WScript.CreateObject ("wscript.shell")
    wshShell.Run "%comspec% /k XCOPY /S /Q /Y /I ""App\Tools\Git"" "".\Git"" & exit", 1, True
    WScript.Echo "BWS-FR possede une fonction de mise a jour automatique qui synchronisera votre copie locale avec la derniere version en ligne chaque fois que vous executerez ce script." & _
                 vbCrLf & "Elle ne mettra a jour aucun fichier d'installation des mods." & vbCrLf & vbCrLf & "Ce message ne s'affichera qu'une seule fois."
    wshShell.Run """.\Git\cmd\git.exe"" init .", 1, True
    wshShell.Run """.\Git\cmd\git.exe"" remote add -f origin https://github.com/Selphira/BigWorldSetupFR", 1, True
    wshShell.Run """.\Git\cmd\git.exe"" branch --track master origin/master", 1, True
    wshShell.Run """.\Git\cmd\git.exe"" reset --hard origin/master", 1, True
	Set wshShell = nothing
  End If
  Set wshShell = WScript.CreateObject ("wscript.shell")
  commandDefinition = "%comspec% /c ""App\Tools\Git\cmd\git.exe""" & " " & "log --pretty=oneline --abbrev-commit --abbrev=7 -n 1" & " > " & "BWS-FR-Version.txt"
  wshShell.Run commandDefinition, 1, True
  wshShell.Run """App\Tools\AutoIt3.exe"" ""App\App.au3""", 1, True
  Set wshShell = nothing
End If