!define APPNAME "Hydraulics Channel GVF"
!define COMPANYNAME "hafsoftdz"
!define DESCRIPTION "Application used to compute water surface profiles in prismatic channel for gradually varied flow."
# These three must be integers
!define VERSIONMAJOR 4
!define VERSIONMINOR 5
!define VERSIONBUILD 7
# These will be displayed by the "Click here for support information" link in "Add/Remove Programs"
# It is possible to use "mailto:" links in here to open the email client
!define HELPURL "https://sites.google.com/site/courshaf" # "Support Information" link
!define UPDATEURL "https://sites.google.com/site/courshaf" # "Product Updates" link
!define ABOUTURL "https://sites.google.com/site/courshaf" # "Publisher" link
# This is the size (in kB) of all the files copied into "Program Files"
!define INSTALLSIZE 30084.657


Name "${COMPANYNAME} - ${APPNAME}"
Icon "hydraulics-channel-gvf.ico"

OutFile "hydraulics-channel-gvf_win64_install_4.5.7.exe"

Icon "hydraulics-channel-gvf.ico"
UninstallIcon "hydraulics-channel-gvf.ico"


DirText "Uninstall previous version if exist and Choose directory for installing (Hydraulics Channel GVF) Ver 4.5.7/29-4-2023"

InstallDir "$PROGRAMFILES\hydraulics-channel-gvf"

Section "Install"
  SetOutPath $INSTDIR
  File "C:\Qt\6.5.0\mingw_64\bin\libgcc_s_seh-1.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\libstdc++-6.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\libwinpthread-1.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\Qt6Core.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\Qt6Gui.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\Qt6PrintSupport.dll"
  File "C:\Qt\6.5.0\mingw_64\bin\Qt6Widgets.dll"
CreateDirectory $INSTDIR\platforms
SetOutPath $INSTDIR\platforms
  File "C:\Qt\6.5.0\mingw_64\plugins\platforms\qwindows.dll"
SetOutPath $INSTDIR 
 File "..\CompilationWin\release\hydraulics-channel-gvf.exe"
 File "hydraulics-channel-gvf.ico"

 # WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\hydraulics-channel-gvf" "DisplayName" "hydraulics-channel-gvf"
#  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\hydraulics-channel-gvf" "UninstallString" "$INSTDIR\uninstall.exe"
 WriteUninstaller "uninstall.exe"



# Registry information for add/remove programs
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayName" "${APPNAME} - ${DESCRIPTION}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
	#WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "QuietUninstallString" "$\"$INSTDIR\uninstall.exe$\" /S"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "InstallLocation" "$\"$INSTDIR$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayIcon" "$\"$INSTDIR\hydraulics-channel-gvf.ico$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "Publisher" "${COMPANYNAME}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "HelpLink" "$\"${HELPURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLUpdateInfo" "$\"${UPDATEURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLInfoAbout" "$\"${ABOUTURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONBUILD}"
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMajor" ${VERSIONMAJOR}
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMinor" ${VERSIONMINOR}
	# There is no option for modifying or repairing the install
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoRepair" 1
	# Set the INSTALLSIZE constant (!defined at the top of this script) so Add/Remove Programs can accurately report the size
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "EstimatedSize" ${INSTALLSIZE}

SectionEnd

Section "Shortcuts"
  SetShellVarContext all
  CreateDirectory "$SMPROGRAMS\hydraulics-channel-gvf"
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\hydraulics-channel-gvf\hydraulics-channel-gvf.lnk""$INSTDIR\hydraulics-channel-gvf.exe" "" "$INSTDIR\hydraulics-channel-gvf.ico"
  SetOutPath $INSTDIR
  CreateShortCut "$DESKTOP\hydraulics-channel-gvf.lnk""$INSTDIR\hydraulics-channel-gvf.exe"
  CreateShortCut "$QUICKLAUNCH\hydraulics-channel-gvf.lnk""$INSTDIR\hydraulics-channel-gvf.exe"
  CreateShortCut "$SMPROGRAMS\hydraulics-channel-gvf\uninstall_hydraulics-channel-gvf.lnk""$INSTDIR\uninstall.exe"
SectionEnd

UninstallText "Close hydraulics-channel-gvf if running ; This will uninstall 'Hydraulics Channel GVF' from your system"

Section "Uninstall"
SetShellVarContext all
#DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\hydraulics-channel-gvf"
DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}"
Delete "$SMPROGRAMS\hydraulics-channel-gvf\hydraulics-channel-gvf.lnk"
Delete "$SMPROGRAMS\hydraulics-channel-gvf\uninstall_hydraulics-channel-gvf.lnk"
RmDir "$SMPROGRAMS\hydraulics-channel-gvf"
Delete "$DESKTOP\hydraulics-channel-gvf.lnk"
Delete "$QUICKLAUNCH\hydraulics-channel-gvf.lnk"
Delete "$INSTDIR\libgcc_s_seh-1.dll"
Delete "$INSTDIR\libstdc++-6.dll"
Delete "$INSTDIR\libwinpthread-1.dll"
Delete "$INSTDIR\QtCore.dll"
Delete "$INSTDIR\QtGui.dll"
Delete "$INSTDIR\QtPrintSupport.dll"
Delete "$INSTDIR\QtWidgets.dll"
Delete "$INSTDIR\platforms\qwindows.dll"
RMDir $INSTDIR\platforms
Delete "$INSTDIR\hydraulics-channel-gvf.exe"
Delete "$INSTDIR\hydraulics-channel-gvf.ico"
Delete "$INSTDIR\uninstall.exe"
RmDir "$INSTDIR"
SectionEnd
