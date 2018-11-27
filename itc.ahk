SetKeyDelay, 1

!1::
len := StrLen(clipboard)
if (len = 8)
{
	WinActivate 10.5.20.90
	Send,{Pause}LT01/%clipboard%{Enter}
}
else
{
	MsgBox, Clipboard not the right length - %clipboard% - %ln%
}
Return

!2::
len := StrLen(clipboard)
if (len = 8)
{
	WinActivate 10.5.20.90
	Send,{Pause}LT11/%clipboard%{Enter}
}
else
{
	MsgBox, Clipboard not the right length - %clipboard% - %ln%
}
Return


; Loop
; {
;    WinWait, SourceGear DiffMerge - Registration Information, , 0.5
;    MsgBox, Diffmerge window was found. 
;    WinClose, SourceGear DiffMerge - Registration Information
; }
