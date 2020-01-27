resetINI(){
    global
	defaultProfile := "[General]`n"
	defaultProfile .= "HotkeyOptions=F10`n"
	defaultProfile .= "AutoGame=0`n"
	defaultProfile .= "HotkeyQuitActive=1`n"
	defaultProfile .= "HotkeyQuit=F12`n"
	defaultProfile .= "[CustomApps]`n"
	defaultProfile .= "Custom1=`n"
	defaultProfile .= "Custom2=`n"
	defaultProfile .= "Custom3=`n"
	defaultProfile .= "Custom4=`n"
	defaultProfile .= "Custom5=`n"
	defaultProfile .= "Custom6=`n"
	defaultProfile .= "[RestartGame]`n"
	defaultProfile .= "HotkeyRestartActive=1`n"
	defaultProfile .= "HotkeyRestart=F8`n"
	defaultProfile .= "DelayKeys=75`n"
	defaultProfile .= "DelayRestart=3500`n"
	defaultProfile .= "[SlideSpam]`n"
	defaultProfile .= "HotkeySlideActive=1`n"
	defaultProfile .= "HotkeySlide=XButton2`n"
	defaultProfile .= "KeySprint=LShift`n"
	defaultProfile .= "KeyCrouch=LControl`n"
	defaultProfile .= "DelaySprint=100`n"
	defaultProfile .= "DelayCrouchDown=500`n"
	defaultProfile .= "DelayCrouchUp=100`n"
	defaultProfile .= "[AttackSpam]`n"
	defaultProfile .= "HotkeyAttackActive=0`n"
	defaultProfile .= "HotkeyAttack=LButton`n"
	defaultProfile .= "DelayAttack=100`n"
	defaultProfile .= "[GrenadeSpam]`n"
	defaultProfile .= "HotkeyGrenadeActive=1`n"
	defaultProfile .= "HotkeyGrenade=MButton`n"
	defaultProfile .= "KeyGrenade=G`n"

    FileDelete, %ini%
	FileAppend, %defaultProfile%, %ini%, UTF-16
}

submit(){  
UpdateHotkeys:
	global
	Gui, Submit 
	updsettings := "[General]`n"
	updsettings .= "HotkeyOptions=" . HotkeyOptions . "`n"
	updsettings .= "AutoGame=" . AutoGame . "`n"
	updsettings .= "HotkeyQuitActive=" . HotkeyQuitActive . "`n"
	updsettings .= "HotkeyQuit=" . HotkeyQuit . "`n"
	updsettings .= "[CustomApps]`n"
	updsettings .= "Custom1=" . Custom1 . "`n"
	updsettings .= "Custom2=" . Custom2 . "`n"
	updsettings .= "Custom3=" . Custom3 . "`n"
	updsettings .= "Custom4=" . Custom4 . "`n"
	updsettings .= "Custom5=" . Custom5 . "`n"
	updsettings .= "Custom6=" . Custom6 . "`n"
	updsettings .= "[RestartGame]`n"
	updsettings .= "HotkeyRestartActive=" . HotkeyRestartActive . "`n"
	updsettings .= "HotkeyRestart=" . HotkeyRestart . "`n"
	updsettings .= "DelayKeys=" . DelayKeys . "`n"
	updsettings .= "DelayRestart=" . DelayRestart . "`n"
	updsettings .= "[SlideSpam]`n"
	updsettings .= "HotkeySlideActive=" . HotkeySlideActive . "`n"
	updsettings .= "HotkeySlide=" . HotkeySlide . "`n"
	updsettings .= "KeySprint=" . KeySprint . "`n"
	updsettings .= "KeyCrouch=" . KeyCrouch . "`n"
	updsettings .= "DelaySprint=" . DelaySprint . "`n"
	updsettings .= "DelayCrouchDown=" . DelayCrouchDown . "`n"
	updsettings .= "DelayCrouchUp=" . DelayCrouchUp . "`n"
	updsettings .= "[AttackSpam]`n"
	updsettings .= "HotkeyAttackActive=" . HotkeyAttackActive . "`n"
	updsettings .= "HotkeyAttack=" . HotkeyAttack . "`n"
	updsettings .= "DelayAttack=" . DelayAttack . "`n"
	updsettings .= "[GrenadeSpam]`n"
	updsettings .= "HotkeyGrenadeActive=" . HotkeyGrenadeActive . "`n"
	updsettings .= "HotkeyGrenade=" . HotkeyGrenade . "`n"
	updsettings .= "KeyGrenade=" . KeyGrenade . "`n"

	FileDelete, %ini%
	FileAppend, %updsettings%, %ini%, UTF-16

	readFromFile()

	return    
}

readFromFile(){
	global
    ; disable all hotkeys
	If HotkeyOptions
		Hotkey, % HotkeyOptions, CommandOptions, Off
	If HotkeyQuit
		Hotkey, % HotkeyQuit, CommandQuit, Off
	If HotkeyRestart
		Hotkey, % HotkeyRestart, CommandRestartGame, Off
	If HotkeySlide
		Hotkey, % HotkeySlide, CommandSlide, Off
	If HotkeyAttack
		Hotkey, % HotkeyAttack, CommandAttack, Off
	If HotkeyGrenade
		Hotkey, % HotkeyGrenade, CommandGrenade, Off
    ; then read the settings from the INI
	IniRead, HotkeyOptions, %ini%, General, HotkeyOptions, %A_Space%
	IniRead, AutoGame, %ini%, General, AutoGame
	IniRead, HotkeyQuitActive, %ini%, General, HotkeyQuitActive
	IniRead, HotkeyQuit, %ini%, General, HotkeyQuit, %A_Space%
	IniRead, Custom1, %ini%, CustomApps, Custom1, %A_Space%
	IniRead, Custom2, %ini%, CustomApps, Custom2, %A_Space%
	IniRead, Custom3, %ini%, CustomApps, Custom3, %A_Space%
	IniRead, Custom4, %ini%, CustomApps, Custom4, %A_Space%
	IniRead, Custom5, %ini%, CustomApps, Custom5, %A_Space%
	IniRead, Custom6, %ini%, CustomApps, Custom6, %A_Space%
	IniRead, HotkeyRestartActive, %ini%, RestartGame, HotkeyRestartActive
	IniRead, HotkeyRestart, %ini%, RestartGame, HotkeyRestart, %A_Space%
	IniRead, DelayKeys, %ini%, RestartGame, DelayKeys
	IniRead, DelayRestart, %ini%, RestartGame, DelayRestart
	IniRead, HotkeySlideActive, %ini%, SlideSpam, HotkeySlideActive
	IniRead, HotkeySlide, %ini%, SlideSpam, HotkeySlide, %A_Space%
	IniRead, KeySprint, %ini%, SlideSpam, KeySprint
	IniRead, KeyCrouch, %ini%, SlideSpam, KeyCrouch
	IniRead, DelaySprint, %ini%, SlideSpam, DelaySprint
	IniRead, DelayCrouchDown, %ini%, SlideSpam, DelayCrouchDown
	IniRead, DelayCrouchUp, %ini%, SlideSpam, DelayCrouchUp
	IniRead, HotkeyAttackActive, %ini%, AttackSpam, HotkeyAttackActive
	IniRead, HotkeyAttack, %ini%, AttackSpam, HotkeyAttack, %A_Space%
	IniRead, DelayAttack, %ini%, AttackSpam, DelayAttack
	IniRead, HotkeyGrenadeActive, %ini%, GrenadeSpam, HotkeyGrenadeActive
	IniRead, HotkeyGrenade, %ini%, GrenadeSpam, HotkeyGrenade, %A_Space%
	IniRead, KeyGrenade, %ini%, GrenadeSpam, KeyGrenade, %A_Space%
    ; then activate the hotkeys depending on the state read from the INI
	If HotkeyOptions
		Hotkey, % HotkeyOptions, CommandOptions, On
	else {
		Hotkey, F10, CommandOptions, On
	}
	If HotkeyQuit && HotkeyQuitActive
		Hotkey, % HotkeyQuit, CommandQuit, On
	If HotkeyRestart && HotkeyRestartActive
		Hotkey, % HotkeyRestart, CommandRestartGame, On
	If HotkeySlide && HotkeySlideActive
		Hotkey, % HotkeySlide, CommandSlide, On
	If HotkeyAttack && HotkeyAttackActive
		Hotkey, % HotkeyAttack, CommandAttack, On
	If HotkeyGrenade && HotkeyGrenadeActive
		Hotkey, % HotkeyGrenade, CommandGrenade, On
}