reloadScript(){
    Reload
    Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
    MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
    IfMsgBox, Yes, Edit
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

customProcess(var){
    FileSelectFile, Custom%var%Path, S3, , Select application / file
    SplitPath, Custom%var%Path, , , , Custom%var%PathSplit
    GuiControl, , Custom%var%PathText, % Custom%var%PathSplit
    GuiControl, , Custom%var%Run, % "Run " . Custom%var%PathSplit
}