; -- Example1.iss --
; Demonstrates copying 3 files and creating an icon.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=cppQuiz
#define version "0.2.0"    ;change this when it's replaced with a new version

#define rel_fold "0.2.0"    ;change this when it's replaced with a new version

AppVersion={#version}
VersionInfoVersion={#version}
WizardStyle=modern
DefaultDirName={autopf}\MiCppQuiz
DefaultGroupName=MiCppQuiz
UninstallDisplayIcon={app}\cppQuiz.exe
Compression=lzma2
SolidCompression=yes
AppPublisher=Mi
AppPublisherURL=https://github.com/UndefinedYass/cppQuiz
OutputBaseFilename="cppQuiz-{#version}"
OutputDir="{#version}-Output"
ChangesAssociations=yes
 WindowVisible = no


[Types]
Name: "full"; Description: "Full installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom





[Tasks]
Name: "fileAssociations"; Description: "File associations"; 

[Registry]
; cqw file association
Root: HKA; Subkey: "Software\Classes\.cqw\OpenWithProgids"; ValueType: string; ValueName: "cppQuiz.cqw"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\cppQuiz.cqw"; ValueType: string; ValueName: ""; ValueData: "cppQuiz File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\cppQuiz.cqw\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\CQW-ICO.ico"
Root: HKA; Subkey: "Software\Classes\cppQuiz.cqw\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\cppQuiz.exe"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\cppQuiz.exe\SupportedTypes"; ValueType: string; ValueName: ".cqw"; ValueData: ""




[Icons]
Name: "{group}\cppQuiz"; Filename: "{app}\cppQuiz.EXE"; WorkingDir: "{app}"
Name: "{group}\Uninstall cppQuiz"; Filename: "{uninstallexe}"





[Run]
;Filename: "{app}\README.TXT"; Description: "Show README file"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\cppQuiz.EXE"; Description: "Launch application"; Flags: postinstall nowait skipifsilent 


[Files]
Source: "{#rel_fold}\*"; DestDir: "{app}" ; Excludes: "*.pdb , *.iss, *.yasscmd"   ; Flags:"replacesameversion"
Source: "{#rel_fold}\quizzes\*"; DestDir: "{app}\quizzes"    ; 


