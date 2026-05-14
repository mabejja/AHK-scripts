#Requires AutoHotkey v2.0
; Ctrl is held
#HotIf GetKeyState("Ctrl", "P") and !GetKeyState("Shift", "P")
*WheelRight::Send("{Blind}#{Right}")
*WheelLeft::Send("{Blind}#{Left}")

; Ctrl and Shift are both held
#HotIf GetKeyState("Ctrl", "P") and GetKeyState("Shift", "P")
*WheelRight::
*WheelLeft::Send("#{Tab}")

; Alt is held
#HotIf GetKeyState("Alt", "P")
*WheelRight::Send("{Blind}{Tab}")
*WheelLeft::Send("{Blind}+{Tab}")

#HotIf
