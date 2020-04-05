/*
BL3 Utilities
An AutoHotkey script
Created by Dank Rafft
https://github.com/DankRafft/BL3Utilities
*/

; global
#NoEnv
#Persistent
#SingleInstance force
#IfWinActive ahk_exe Borderlands3.exe ; make functions only available if PoE window is frontmost

version = 10
appLoops = 6
ini = %A_ScriptDir%\resources\BL3Uconfig.ini
title = BL3Utilities v%version% by DankRafft

#Include %A_ScriptDir%\lib\inifunctions.ahk
#Include %A_ScriptDir%\lib\tooltips.ahk
#Include %A_ScriptDir%\lib\GroupBox.ahk
#Include %A_ScriptDir%\lib\gui.ahk

FileEncoding , UTF-8
SendMode Input
SetTitleMatchMode, 3
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\resources\tray.ico
Menu, Tray, Tip, %title%
Menu, Tray, NoStandard ; remove standard tray menu
Menu, Tray, Add, Options, CommandOptions ; add options to tray menu at the top
Menu, Tray, Default, Options ; make options command in tray menu the default entry
Menu, Tray, Add ; separator
Menu, Tray, Standard ; add standard menu


;----------------------- create/read INI file

if !FileExist(ini) {
	resetINI()
}
ReadFromFile()


;----------------------- auto start game

If (AutoGame = 1) and !WinExist("ahk_exe Borderlands3.exe") {
    If (Steam = 1) {
        Run steam://rungameid/397540
    }
    Else {
        Run com.epicgames.launcher://apps/Catnip?action=launch&silent=true
    }
}


;----------------------- GUI

createGUI()
return ;return to idle to prevent the script from continuing down the code

CommandOptions:
    Gui, Show,, %title%
    OnMessage(0x200, "WM_MOUSEMOVE")
    processWarningFound := 0
    return


;----------------------- game hotkeys

CommandQuit:
    BlockInput On
	SendInput {Esc}
	Sleep, %DelayKeys%
    If (Steam = 1) {
        Loop 5 {
            SendInput {Down}
            Sleep, %DelayKeys%
        }
    }
    Else {
        Loop 4 {
            SendInput {Down}
            Sleep, %DelayKeys%
        }
    }
	SendInput {Enter}
	Sleep, %DelayKeys%
	SendInput {Left}
    Sleep, %DelayKeys%
	SendInput {Enter}
	BlockInput Off
    Sleep, 1000
    ExitApp
	return

CommandRestartGame:
	BlockInput On
	SendInput {Esc}
	Sleep, %DelayKeys%
    If (Steam = 1) {
        Loop 5 {
            SendInput {Down}
            Sleep, %DelayKeys%
        }
    }
    Else {
        Loop 4 {
            SendInput {Down}
            Sleep, %DelayKeys%
        }
    }
	SendInput {Enter}
	Sleep, %DelayKeys%
	Loop 2 {
        SendInput {Left}
        Sleep, %DelayKeys%
    }
	SendInput {Enter}
	Sleep, %DelayRestart%
	SendInput {Up}
	Sleep, %DelayKeys%
    Loop 2 {
        SendInput {Enter}
        Sleep, %DelayKeys%
    }
	BlockInput Off
	return
    
CommandSlide:
    while GetKeyState(HotkeySlide, "P") {
        SendInput {%KeySprint%}
        Sleep, %DelaySprint%
        SendInput {%KeyCrouch% Down}
        Sleep, %DelayCrouchDown%
        SendInput {%KeyCrouch% Up}
        Sleep, %DelayCrouchUp%
    }
	return

CommandAttack:
    while GetKeyState(HotkeyAttack, "P") {
        SendInput {LButton}
        Sleep, %DelayAttack%
    }
    return

CommandGrenade:
    while GetKeyState(HotkeyGrenade, "P") {
        SendInput {%KeyGrenade%}
        Sleep, 150
    }
    return

CommandRunApp:
    Loop %appLoops% {
        TempHotkey := HotkeyApp%A_Index%
        If (TempHotkey = A_ThisHotkey) {
            Run % Custom%A_Index%
            Break
        }
    }
    return