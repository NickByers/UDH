#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes sure the script only runs one at a time
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
; performance related commands above

; format is the same for all commands
~!Up::
    if (WinActive("ahk_exe Discord.exe")) {
    return
} ; check if discord window is active. Do this to avoid duplicate input
; from both this app and discord

    ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Discord.exe ; get focus
    ControlSend,ahk_parent, {Blind}{Alt down}{UP}, ahk_exe Discord.exe ; send command
    Sleep, 5 ; sleep to avoid input spam
return



~!Down::
   if (WinActive("ahk_exe Discord.exe")) {
    return
} 
    ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Discord.exe 
    ControlSend,ahk_parent, {Blind}{Alt down}{DOWN}, ahk_exe Discord.exe 
    Sleep, 5
return


~^!Up::
      if (WinActive("ahk_exe Discord.exe")) {
    return
} 
    ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Discord.exe 
    ControlSend,ahk_parent, {Blind}{Ctrl down}{Blind}{Alt down}{UP}, ahk_exe Discord.exe
    Sleep, 5 
return



~^!Down::
     if (WinActive("ahk_exe Discord.exe")) {
    return
} 
    ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_exe Discord.exe 
    ControlSend,ahk_parent, {Blind}{Ctrl down}{Blind}{Alt down}{DOWN}, ahk_exe Discord.exe 
    Sleep, 5
return

