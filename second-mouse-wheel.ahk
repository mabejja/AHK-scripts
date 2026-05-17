#Requires AutoHotkey v2.0

; Ctrl is held
#HotIf GetKeyState("Ctrl", "P") and !GetKeyState("Shift", "P")
*WheelRight::Send("{Blind}#{Right}")
*WheelLeft::Send("{Blind}#{Left}")
*XButton2::Send("{Blind}#{Right}")
*XButton1::Send("{Blind}#{Left}")

; Ctrl and Shift are both held
#HotIf GetKeyState("Ctrl", "P") and GetKeyState("Shift", "P")
*WheelRight::
*WheelLeft::
*XButton2::
*XButton1::Send("#{Tab}")

; Alt is held
#HotIf GetKeyState("Alt", "P")
*WheelRight::Send("{Blind}{Tab}")
*WheelLeft::Send("{Blind}+{Tab}")
*XButton2::Send("{Blind}{Tab}")
*XButton1::Send("{Blind}+{Tab}")

; Reset context for anything below the HotIf
#HotIf
