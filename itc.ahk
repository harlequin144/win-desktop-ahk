SetKeyDelay, 1


!+2::
Send,/002/%clipboard%
Return

!+3::
Send,/003/%clipboard%
Return

!1::
len := StrLen(clipboard)
if (len = 8)
{
	WinActivate 10.5.20.90
	Send,{Pause}LCBY/%clipboard%{Enter}
}
else
{
	MsgBox, Clipboard not the right length - %clipboard% - %ln%
}
Return

!2::
len := StrLen(clipboard)
if (len = 12)
{
	WinActivate 10.5.20.90
	Send,{Pause}lcsp/002/%clipboard%{Enter}
}
else
{
	MsgBox, Clipboard not the right length - %clipboard% - %ln%
}
Return

!3::
len := StrLen(clipboard)
if (len = 12)
{
	WinActivate 10.5.20.90
	Send,{Pause}lcsp/003/%clipboard%{Enter}
}
else
{
	MsgBox, Clipboard not the right length - %clipboard% - %ln%
}
Return
