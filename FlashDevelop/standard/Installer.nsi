
; The name of the project
Name "Project" ; Write the name of your project here between ""

;Name of the installer
OutFile "Project.exe" ; Write the name of your installer executable here 

; The default installation directory
InstallDir $PROGRAMFILES32\Ideum

; The text to prompt the user to enter a directory
DirText "This will install the Project application. Choose a root directory:" ; Write your project name again here

RequestExecutionLevel admin

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

!define NAME "Project" ;Write project name here

!define EXECUTABLE "Project.exe" ;Write name of your .exe file that you converted from .swf and are including in the installer.

!define FILENAME "Project" ; Write root file name with no spaces ex: (NationalParkService)

SetShellVarContext all

SetOutPath "$INSTDIR\${FILENAME}"

;These are all the files in your bin directory that are required to run the project
File /r "bin\*"

  ; Write the installation path into the registry
  WriteRegStr HKLM SOFTWARE\${FILENAME} "Install_Dir" "$INSTDIR"
  
  ; Write the uninstall keys for Windows
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${FILENAME}" "DisplayName" "${NAME}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${FILENAME}" "UninstallString" '"$INSTDIR\${FILENAME}\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${FILENAME}" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${FILENAME}" "NoRepair" 1
  WriteUninstaller "$INSTDIR\${FILENAME}\uninstall.exe"

CreateDirectory "$SMPROGRAMS\Ideum"
CreateShortCut "$SMPROGRAMS\Ideum\${NAME}.lnk" "$INSTDIR\${FILENAME}\${EXECUTABLE}"
CreateShortCut "$DESKTOP\${NAME}.lnk" "$INSTDIR\${FILENAME}\${EXECUTABLE}"
CreateShortCut "$APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\${NAME}.lnk" "$INSTDIR\${FILENAME}\${EXECUTABLE}"

;UNCOMMMENT IF YOU WANT THE README TO OPEN AFTER INSTALLATION
;ExecShell "open" "$INSTDIR\${FILENAME}\readme.txt"

SectionEnd ; end the section

;--------------------------------

; Uninstaller

Section "Uninstall"
  SetShellVarContext all

  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\Ideum\${NAME}.lnk"  
  Delete "$DESKTOP\${NAME}.lnk"
  Delete "$APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\${NAME}.lnk"

  ; Remove directory
  RMDir /r "$INSTDIR"
    
  ; Remove registry keys
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${FILENAME}"
  DeleteRegKey HKLM SOFTWARE\${FILENAME}
  
SectionEnd