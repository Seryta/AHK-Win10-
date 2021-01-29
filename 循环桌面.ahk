#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoTrayIcon
#SingleInstance Force
#UseHook On

flag = 1


~^#Left::
If (flag != 1)
{
    flag := flag - 1
    Send ^#{Left}
} Else {
    Send ^#{Right 2}
    flag = 3
}
Return

~^#Right::
If (flag != 3)
{
    flag := flag + 1
    Send ^#{Right}
} Else {
    Send ^#{Left 2}
    flag = 1
}
Return
