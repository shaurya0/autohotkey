#IfWinNotActive ahk_class Sublime Text
^h::
Send, {Delete}
return

^+h::
Send, +{Delete}
return

!i::
Send, {Up}
return

!,::
Send, {Down}
return

!e::
Send, {Up}
return

^+o::
Send, {PgUp}
return

^+.::
Send, {PgDn}
return

!u::
Send, {Left}
return

!o::
Send, {Right}
return

!+u::
Send, +{Left}
return

!+o::
Send, +{Right}
return

!j::
Send, ^{Left}
return

!l::
Send, ^{Right}
return


!+j::
Send, ^+{Left}
return

!+l::
Send, ^+{Right}
return

!n::
Send, {Home}
return

!m::
Send, {End}
return

!+n::
Send, +{Home}
return

!+m::
Send, +{End}
return    

^+,::
Send, ^{End}
return

^,::
Send, {Enter}
return

!k::
Send, {BackSpace}
return

!+k::
Send, ^{BackSpace}
return

!+i::
Send, +{Up}
return

!+,::
Send, +{Down}
return
#IfWinNotActive

^`::RoA("ahk_class Sublime Text", "C:\Program Files\Sublime Text 3\subl.exe")
!`::RoA("ahk_class MozillaWindowClass", "C:\Program Files\Mozilla Firefox\firefox.exe")
!Space::RoA("ahk_class CASCADIA_HOSTING_WINDOW_CLASS", "C:\Users\shaurya\AppData\Local\Microsoft\WindowsApps\wt.exe")

WinGetClass, class, A
MsgBox, The active window's class is "%class%".

RoA(WinTitle, Target) { ; RoA means "RunOrActivate"
    IfWinExist, %WinTitle%
        WinActivate, %WinTitle%
    else
        Run, %Target%
}

!^b::
RoA("ahk_class HwndWrapper[DefaultDomain;;0e3c8dcb-8627-48b2-88f2-7c0ee6d7273d]", "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe")
Send, ^+b
return

!+`::
WinGetClass, OldClass, A
WinGet, ActiveProcessName, ProcessName, A
WinGet, WinClassCount, Count, ahk_exe %ActiveProcessName%
IF WinClassCount = 1
    Return
loop, 2 {
  WinSet, Bottom,, A
  WinActivate, ahk_exe %ActiveProcessName%
  WinGetClass, NewClass, A
  if (OldClass <> "CabinetWClass" or NewClass = "CabinetWClass")
    break
}
