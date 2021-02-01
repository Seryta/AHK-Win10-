; #NoTrayIcon
#SingleInstance Force
#UseHook On

flag = 1

; Send ^!{D 2}

^#Left::
If (flag > 1)
{
    flag := flag - 1
    Send ^#{Left}
} Else {
    flag := 3
    Send ^#{Right 2}
}
Return

^#Right::
If (flag < 3)
{
    flag := flag + 1
    Send ^#{Right}
} Else {
    flag := 1
    Send ^#{Left 2}
}
Return
