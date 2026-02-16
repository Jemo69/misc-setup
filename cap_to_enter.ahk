#Requires AutoHotkey v2.0
#SingleInstance

; Make CapsLock send {Enter} on a short press, and {Esc} on a long press.
*CapsLock::
{
    ; KeyWait returns 0 if it times out (key was held) or 1 if it was released.
    ; We wait up to 0.4 seconds for the key to be released.
    if KeyWait("CapsLock", "T0.4")
    {
        ; The key was released before the timeout (a short press).

        Send("{Enter}")
    }
    else
    {
        ; The KeyWait timed out because the key was held down (a long press).
        Send("{Esc}")
    }
}
 









