createGUI(){
    global
    Loop %appLoops% {
        SplitPath, Custom%A_Index%, Custom%A_Index%Split
    }
    ; gui variables
    size1 := "w110 h20"
    size2 := "w80 h20"
    size3 := "w200 h20"
    ; create tabs
    Gui, Add, Tab2, w705 h255, Gameplay Macros|Custom Apps
    ; gameplay macros
    Gui, Tab, Gameplay Macros
    ; game
    Gui, Add, Text, %size1% 0x200 Section vHotkeyOptionsText gTooltip, User Interface Hotkey:
    Gui, Add, Edit, ys %size2% vHotkeyOptions, %HotkeyOptions%
    Gui, Add, Checkbox, xs %size1% vAutoGame Checked%AutoGame%, BL3 Auto-Start
    Gui, Add, Checkbox, xs %size1% vHotkeyQuitActive Checked%HotkeyQuitActive%, Quit Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyQuit, %HotkeyQuit%
    GroupBox("game", "Script and UI Options", "HotkeyOptionsText|HotkeyOptions|AutoGame|HotkeyQuitActive|HotkeyQuit", "Green")
    ; slide
    Gui, Add, Checkbox, ys %size1% Section vHotkeySlideActive Checked%HotkeySlideActive%, Macro Hotkey:
    Gui, Add, Edit, ys %size2% vHotkeySlide, %HotkeySlide%
    Gui, Add, Text, xs %size1% 0x200 vKeySprintText gTooltip, Sprint Key:
    Gui, Add, Edit, x+10 %size2% vKeySprint, %KeySprint%
    Gui, Add, Text, xs %size1% 0x200 vKeyCrouchText gTooltip, Crouch Key:
    Gui, Add, Edit, x+10 %size2% vKeyCrouch, %KeyCrouch%
    Gui, Add, Text, x+30 ys %size1% 0x200 Section vDelaySprintText gTooltip, Sprint Duration (ms):
    Gui, Add, Edit, ys %size2% number limit4 vDelaySprint, %DelaySprint%
    Gui, Add, Text, xs %size1% 0x200 vDelayCrouchDownText gTooltip, Crouch Down (ms):
    Gui, Add, Edit, x+10 %size2% number limit4 vDelayCrouchDown, %DelayCrouchDown%
    Gui, Add, Text, xs %size1% 0x200 vDelayCrouchUpText gTooltip, Crouch Up (ms):
    Gui, Add, Edit, x+10 %size2% number limit4 vDelayCrouchUp, %DelayCrouchUp%
    GroupBox("slide", "Slide Repeater Macro", "HotkeySlideActive|HotkeySlide|KeySprintText|KeySprint|KeyCrouchText|KeyCrouch|DelaySprintText|DelaySprint|DelayCrouchDownText|DelayCrouchDown|DelayCrouchUpText|DelayCrouchUp", "Green")
    ; restart
    Gui, Add, Checkbox, x22 y+10 %size1% Section vHotkeyRestartActive Checked%HotkeyRestartActive%, Restart Hotkey:
    Gui, Add, Edit, ys %size2% vHotkeyRestart, %HotkeyRestart%
    Gui, Add, Text, xs %size1% 0x200 vDelayKeysText gTooltip, Keystroke Delay (ms):
    Gui, Add, Edit, x+10 %size2% number limit4 vDelayKeys, %DelayKeys%
    Gui, Add, Text, xs %size1% 0x200 vDelayRestartText gTooltip, Restart Delay (ms):
    Gui, Add, Edit, x+10 %size2% number limit4 vDelayRestart, %DelayRestart%
    GroupBox("restart", "Restart Game Session", "HotkeyRestartActive|HotkeyRestart|DelayKeysText|DelayKeys|DelayRestartText|DelayRestart", "Green")
    ; gun
    Gui, Add, Checkbox, ys %size1% Section vHotkeyAttackActive Checked%HotkeyAttackActive%, Macro Hotkey:
    Gui, Add, Edit, ys %size2% vHotkeyAttack, %HotkeyAttack%
    Gui, Add, Text, xs %size1% 0x200 vDelayAttackText gTooltip, Attack Delay (ms):
    Gui, Add, Edit, x+10 %size2% number limit4 vDelayAttack, %DelayAttack%
    GroupBox("gun", "Gun Repeater Macro", "HotkeyAttackActive|HotkeyAttack|DelayAttackText|DelayAttack", "Green")
    ; grenade
    Gui, Add, Checkbox, ys %size1% Section vHotkeyGrenadeActive Checked%HotkeyGrenadeActive%, Macro Hotkey:
    Gui, Add, Edit, ys %size2% vHotkeyGrenade, %HotkeyGrenade%
    Gui, Add, Text, xs %size1% 0x200 vKeyGrenadeText gTooltip, Grenade Key:
    Gui, Add, Edit, x+10 %size2% vKeyGrenade, %KeyGrenade%
    GroupBox("grenade", "Grenade Repeater Macro", "HotkeyGrenadeActive|HotkeyGrenade|KeyGrenadeText|KeyGrenade", "Green")
    ; custom apps
    Gui, Tab, Custom Apps
    ; app 1
    Gui, Add, Edit, %size3% Section ReadOnly vCustom1Text, %Custom1Split%
    Gui, Add, Button, xs %size1% vCustom1 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom1Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp1Active Checked%HotkeyApp1Active%, App #1 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp1, %HotkeyApp1%
    GroupBox("app1", "App #1", "Custom1Text|Custom1|Custom1Run|HotkeyApp1Active|HotkeyApp1", "Green")
    ; app 2
    Gui, Add, Edit, ys %size3% Section ReadOnly vCustom2Text, %Custom2Split%
    Gui, Add, Button, xs %size1% vCustom2 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom2Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp2Active Checked%HotkeyApp2Active%, App #2 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp2, %HotkeyApp2%
    GroupBox("app2", "App #2", "Custom2Text|Custom2|Custom2Run|HotkeyApp2Active|HotkeyApp2", "Green")
    ; app 3
    Gui, Add, Edit, ys %size3% Section ReadOnly vCustom3Text, %Custom3Split%
    Gui, Add, Button, xs %size1% vCustom3 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom3Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp3Active Checked%HotkeyApp3Active%, App #3 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp3, %HotkeyApp3%
    GroupBox("app3", "App #3", "Custom3Text|Custom3|Custom3Run|HotkeyApp3Active|HotkeyApp3", "Green")
    ; app 4
    Gui, Add, Edit, x22 y+10 %size3% Section ReadOnly vCustom4Text, %Custom4Split%
    Gui, Add, Button, xs %size1% vCustom4 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom4Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp4Active Checked%HotkeyApp4Active%, App #4 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp4, %HotkeyApp4%
    GroupBox("app4", "App #4", "Custom4Text|Custom4|Custom4Run|HotkeyApp4Active|HotkeyApp4", "Green")
    ; app 5
    Gui, Add, Edit, ys %size3% Section ReadOnly vCustom5Text, %Custom5Split%
    Gui, Add, Button, xs %size1% vCustom5 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom5Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp5Active Checked%HotkeyApp5Active%, App #5 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp5, %HotkeyApp5%
    GroupBox("app5", "App #5", "Custom5Text|Custom5|Custom5Run|HotkeyApp5Active|HotkeyApp5", "Green")
    ; app 6
    Gui, Add, Edit, ys %size3% Section ReadOnly vCustom6Text, %Custom6Split%
    Gui, Add, Button, xs %size1% vCustom6 gCustomSelect, Select File
    Gui, Add, Button, x+10 %size2% vCustom6Run gCustomRun, Run
    Gui, Add, Checkbox, xs %size1% vHotkeyApp6Active Checked%HotkeyApp6Active%, App #6 Hotkey:
    Gui, Add, Edit, x+10 %size2% vHotkeyApp6, %HotkeyApp6%
    GroupBox("app6", "App #6", "Custom6Text|Custom6|Custom6Run|HotkeyApp6Active|HotkeyApp6", "Green")
    ; --- Controls ---
    Gui, Tab
    Gui, Add, Button, x40 y+20 w120 h30 Section vUpdateCheck gUpdateCheck, Check for Updates
    Gui, Add, Button, ys w120 h30 vKeyCodes gKeyCodes, Show Key Codes
    Gui, Add, Button, ys w120 h30 vRestartScript gRestartScript, Restart Script
    Gui, Add, Button, ys w120 h30 vResetConfig gResetConfig, Reset Configuration
    Gui, Add, Button, ys w120 h30 default vUpdateHotkeys gUpdateHotkeys, Save
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
    Run, https://github.com/DankRafft/BL3Utilities/releases
    return
}