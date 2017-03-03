; ahk-luamacros-test - Luamacros + AutoHotkey macros for Photoshop
;
; Written in 2016 by Resi Respati <resir014@github.io>
;
; To the extent possible under law, the author(s) have dedicated all copyright
; and related and neighboring rights to this software to the public domain
; worldwide. This software is distributed without any warranty.
;
; You should have received a copy of the CC0 Public Domain Dedication along
; with this software. If not, see
; <http://creativecommons.org/publicdomain/zero/1.0/>.

#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

#SingleInstance force

; uncomment below to lock the scripts below to photoshop.exe only
; #IfWinActive ahk_exe Photoshop.exe

; Tooltip
tippy(tipsHere, wait := 333)
{
    ToolTip, %tipsHere%
    SetTimer, noTip, %wait% ; in 1/3 seconds by default, remove the tooltip
}
noTip:
    ; remove the tooltip
    ToolTip,
return

F24:: ; ...yes.
FileRead, key, C:\Users\Resi\Documents\keypressed.txt
tippy(key)

if (key = "1")
    ; action: new
    Send ^n
else if (key = "2")
    ; action: open
    Send ^o
else if (key = "3")
    ; action: close
    Send ^q
else if (key = "F1")
    ; action: save
    Send {F1}
else if (key = "F2")
    ; action: save as
    Send {F2}
else if (key = "F3")
    ; action: quick export as png
    Send {F3}
else if (key = "F12")
    ; action: exit
    Send ^{F12}
else if (key = "4")
    ; action: cut
    Send, ^x
else if (key = "5")
    ; action: copy
    Send, ^c
else if (key = "6")
    ; action: paste
    Send, ^v
else if (key = "q")
    ; action: fill with foreground color
    Send, !{backspace}
else if (key = "a")
    ; action: fill with background color
    Send, ^{backspace}
else
    MsgBox, , AutoHotkey, Not yet assigned: %key%,
