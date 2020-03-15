; general
HotkeyOptionsText_TT := "Assign a hotkey that opens this options GUI by left-clicking into the dialogue box`nand hit any key or combination of keys. Refer to the key codes list to the right."
HotkeyOptions_TT = %HotkeyOptionsText_TT%
AutoGame_TT .= "When checked the script automatically starts Borderlands 3 upon script start.`nYou need to save and restart the script for this to take effect."
HotkeyQuitActive_TT .= "Set a key that automatically quits the game (only from within a running session) to desktop`nand shuts down BL3 Utilities. When unchecked the assigned hotkey does nothing."
HotkeyQuit_TT = %HotkeyQuitActive_TT%
; restart
HotkeyRestartActive_TT .= "Disable and enable the Restart hotkey.`nWhen disabled the assigned hotkey does nothing."
HotkeyRestart_TT .= "Assign a hotkey that automatically restarts your current`ngame session. Refer to the key codes list to the right."
DelayKeysText_TT .= "The delay between all individual keystrokes (e.g. Escape, Left, Top).`nDon't go below 50ms. Otherwise keystrokes might not register properly."
DelayKeys_TT = %DelayKeysText_TT%
DelayRestartText_TT .= "Set the time required from hitting 'Return to Main Menu' until the Main Menu`nis fully loaded. Start testing with a higher value and lower it step by step."
DelayRestart_TT = %DelayRestartText_TT%
; slide
HotkeySlideActive_TT .= "Disable and enable the Slide macro hotkey.`nWhen disabled the assigned hotkey does nothing."
HotkeySlide_TT .= "Assign a hotkey which when held down will trigger slide periodically.`nRefer to the key codes list to the right."
KeySprintText_TT .= "This key must be set to the same key used for sprinting in game.`nRefer to the key codes list to the right."
KeySprint_TT = %KeySprintText_TT%
KeyCrouchText_TT .= "This key must be set to the same key used for crouching in game.`nRefer to the key codes list to the right."
KeyCrouch_TT = %KeyCrouchText_TT%
DelaySprintText_TT .= "The delay between sprint activation and crouch key press.`nSometimes values below 100ms won't register properly."
DelaySprint_TT = %DelaySprintText_TT%
DelayCrouchDownText_TT .= "The duration of the crouch key being held down resp the slide duration.`nWithout a Snowdrift artifact a value higher than 500ms is inefficient."
DelayCrouchDown_TT = %DelayCrouchDownText_TT%
DelayCrouchUpText_TT .= "The delay between releasing the crouch key and activating sprint again.`nSometimes values below 100ms won't register properly."
DelayCrouchUp_TT = %DelayCrouchUpText_TT%
; attack
HotkeyAttackActive_TT .= "Disable and enable the Attack macro hotkey.`nWhen disabled the assigned hotkey does nothing."
HotkeyAttack_TT .= "Assign a hotkey which when held down will trigger the`nleft mouse button periodically. Great for Jakobs guns."
DelayAttackText_TT .= "The delay between each individual attack.`nThe lower the value the higher the rate of fire."
DelayAttack_TT = %DelayAttackText_TT%
; grenade
HotkeyGrenadeActive_TT .= "Disable and enable the Grenade macro hotkey.`nWhen disabled the assigned hotkey does nothing."
HotkeyGrenade_TT .= "Assign a hotkey which when held down will trigger the`ngrenade button periodically. Great for grenade Moze."
KeyGrenadeText_TT .= "This key must be set to the key used for sprinting in game.`nRefer to the key codes list to the right."
KeyGrenade_TT = %KeyGrenadeText_TT%
; gui controls
RestartScript_TT .= "Reload the script in case something isn't working or you made changes directly to the INI file."
ResetConfig_TT .= "Reset the config to default values and restart the script."
KeyCodes_TT .= "Open a list of all available Key Codes."
UpdateCheck_TT .= "Check for updates to BL3 Utilities."
; custom apps
Loop %appLoops% {
    If (A_Index = 1)
        Custom1Text_TT := "Shows only the file name without its full path."
        Custom1_TT := "Select a file you want to run by hitting the Run button below. It can be an`napplication or any other file that is associated with a specific program."
        HotkeyApp1Active_TT := "Dis-/Enable the hotkey for execution of the custom app."
        HotkeyApp1_TT := "Set the hotkey for app execution."
    If (A_Index > 1)
        Custom%A_Index%Text_TT = %Custom1Text_TT%
        Custom%A_Index%_TT = %Custom1_TT%
        HotkeyApp%A_Index%Active_TT = %HotkeyApp1Active_TT%
        HotkeyApp%A_Index%_TT = %HotkeyApp1_TT%
}