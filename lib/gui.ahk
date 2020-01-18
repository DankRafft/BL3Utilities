createGUI(){
    global
    Loop 4 {
        SplitPath, Custom%A_Index%, Custom%A_Index%Split
    }
    ; --- LEFT PANE ---
    ; general
    Gui, Add, GroupBox, w300 h100 cGreen, General
    Gui, Add, Text, x30 yp+25 w150 h20 vHotkeyOptionsText gTooltip, User Interface Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeyOptions, %HotkeyOptions%
    Gui, Add, Checkbox, x30 yp+25 w100 h20 vAutoGame Checked%AutoGame%, BL3 Auto-Start
    Gui, Add, Checkbox, x30 yp+25 w150 h20 vHotkeyQuitActive Checked%HotkeyQuitActive%, Quit Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeyQuit, %HotkeyQuit%
    ; custom 1
    Gui, Add, GroupBox, x10 yp+50 w300 h85 cGreen, Custom Application #1
    Gui, Add, Edit, x30 yp+22 w150 h20 ReadOnly vCustom1Text, %Custom1Split%
    Gui, Add, Button, x+10 w100 h20 vCustom1 gCustomSelect, Select File
    Gui, Add, Button, x30 yp+30 w260 h25 vCustom1Run gCustomRun, Run %Custom1Split%
    ; custom 2
    Gui, Add, GroupBox, x10 yp+50 w300 h85 cGreen, Custom Application #2
    Gui, Add, Edit, x30 yp+22 w150 h20 ReadOnly vCustom2Text, %Custom2Split%
    Gui, Add, Button, x+10 w100 h20 vCustom2 gCustomSelect, Select File
    Gui, Add, Button, x30 yp+30 w260 h25 vCustom2Run gCustomRun, Run %Custom2Split%
    ; custom 3
    Gui, Add, GroupBox, x10 yp+50 w300 h85 cGreen, Custom Application #3
    Gui, Add, Edit, x30 yp+22 w150 h20 ReadOnly vCustom3Text, %Custom3Split%
    Gui, Add, Button, x+10 w100 h20 vCustom3 gCustomSelect, Select File
    Gui, Add, Button, x30 yp+30 w260 h25 vCustom3Run gCustomRun, Run %Custom3Split%
    ; custom 4
    Gui, Add, GroupBox, x10 yp+50 w300 h85 cGreen, Custom Application #4
    Gui, Add, Edit, x30 yp+22 w150 h20 ReadOnly vCustom4Text, %Custom4Split%
    Gui, Add, Button, x+10 w100 h20 vCustom4 gCustomSelect, Select File
    Gui, Add, Button, x30 yp+30 w260 h25 vCustom4Run gCustomRun, Run %Custom4Split%
    ; --- middle pane ---
    ; restart
    Gui, Add, GroupBox, x330 y6 w300 h100 cGreen, Restart Game Session
    Gui, Add, Checkbox, x350 yp+22 w150 h20 vHotkeyRestartActive Checked%HotkeyRestartActive%, Restart Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeyRestart, %HotkeyRestart%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelayKeysText gTooltip, Keystroke Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelayKeys, %DelayKeys%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelayRestartText gTooltip, Restart Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelayRestart, %DelayRestart%
    ; slide
    Gui, Add, GroupBox, x330 yp+50 w300 h175 cGreen, Auto Slide Macro
    Gui, Add, Checkbox, x350 yp+22 w150 h20 vHotkeySlideActive Checked%HotkeySlideActive%, Slide Macro Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeySlide, %HotkeySlide%
    Gui, Add, Text, x350 yp+30 w150 h20 vKeySprintText gTooltip, Sprint Key:
    Gui, Add, Edit, x+10 yp-5 w100 h20 vKeySprint, %KeySprint%
    Gui, Add, Text, x350 yp+30 w150 h20 vKeyCrouchText gTooltip, Crouch Key:
    Gui, Add, Edit, x+10 yp-5 w100 h20 vKeyCrouch, %KeyCrouch%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelaySprintText gTooltip, Sprint Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelaySprint, %DelaySprint%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelayCrouchDownText gTooltip, Crouch Down Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelayCrouchDown, %DelayCrouchDown%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelayCrouchUpText gTooltip, Crouch Up Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelayCrouchUp, %DelayCrouchUp%
    ; attack
    Gui, Add, GroupBox, x330 yp+50 w300 h75 cGreen, Auto Attack Macro
    Gui, Add, Checkbox, x350 yp+22 w150 h20 vHotkeyAttackActive Checked%HotkeyAttackActive%, Attack Macro Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeyAttack, %HotkeyAttack%
    Gui, Add, Text, x350 yp+30 w150 h20 vDelayAttackText gTooltip, Attack Delay (ms):
    Gui, Add, Edit, x+10 yp-5 w100 h20 number limit4 vDelayAttack, %DelayAttack%
    ; grenade
    Gui, Add, GroupBox, x330 yp+50 w300 h75 cGreen, Auto Grenade Macro
    Gui, Add, Checkbox, x350 yp+22 w150 h20 vHotkeyGrenadeActive Checked%HotkeyGrenadeActive%, Grenade Macro Hotkey:
    Gui, Add, Edit, x+10 yp-3 w100 h20 vHotkeyGrenade, %HotkeyGrenade%
    Gui, Add, Text, x350 yp+30 w150 h20 vKeyGrenadeText gTooltip, Grenade Key:
    Gui, Add, Edit, x+10 yp-5 w100 h20 vKeyGrenade, %KeyGrenade%
    ; --- right pane ---
    ; title
    Gui, Font, s16
    Gui, Add, Text, x650 y10 cRed, BL3 Utilities v5
    Gui, Font, s9
    Gui, Add, Text, x650 y+1, by Dank Rafft
    ; buttons
    Gui, Font, 
    Gui, Add, Button, x650 y+15 w150 h30 vUpdateCheck gUpdateCheck, Check for Updates
    Gui, Add, Button, x650 y+10 w150 h30 vKeyCodes gKeyCodes, Show Key Codes
    Gui, Add, Button, x650 y+10 w150 h30 vRestartScript gRestartScript, Restart Script
    Gui, Add, Button, x650 y+10 w150 h30 vResetConfig gResetConfig, Reset Configuration
    Gui, Font, s20
    Gui, Add, Button, x650 y+10 w150 h50 default vUpdateHotkeys gUpdateHotkeys, Save
    return
}

WM_MOUSEMOVE(){
    static CurrControl, PrevControl, _TT ; _TT is kept blank for use by the ToolTip command below.
    CurrControl := A_GuiControl
    if (CurrControl != PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip ; Turn off any previous tooltip.
        SetTimer, DisplayToolTip, 500 ; dealy before tooltip is shown
        PrevControl := CurrControl
    }
    return
    
    Tooltip: ; workaround to enable tooltips on text GUI elements
        return

    DisplayToolTip:
        SetTimer, DisplayToolTip, Off
        ToolTip % %CurrControl%_TT ; The leading percent sign tell it to use an expression.
        return
}

CustomSelect(){
    FileSelectFile, %A_GuiControl%, S3, , Select application / file
    SplitPath, %A_GuiControl%, %A_GuiControl%Split
    GuiControl, , %A_GuiControl%Text, % %A_GuiControl%Split
    GuiControl, , %A_GuiControl%Run, % "Run " . %A_GuiControl%Split
    return
}

CustomRun(){
    appPath := % SubStr(A_GuiControl, 1, 7)
    Run % %appPath%
    return
}

RestartScript(){
    Reload
    Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
    MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
    IfMsgBox, Yes, Edit
}

ResetConfig(){
    resetINI()
    RestartScript()
    return
}

KeyCodes(){
    Run, https://www.autohotkey.com/docs/KeyList.htm
    return
}

UpdateCheck(){
    Run, https://www.nexusmods.com/borderlands3/mods/73
    return
}