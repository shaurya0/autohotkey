GroupAdd,TextEditor,ahk_exe sublime_text.exe
GroupAdd,TextEditor,ahk_exe code.exe

#IfWinNotActive ahk_group TextEditor
^h::
Send, {Delete}
return

^u::
Send, ^{PgUp}
return

^o::
Send, ^{PgDn}
return

!c::
Send, ^c
return

!x::
Send, ^x
return

!v::
Send, ^v
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

!y::
Send, {PgUp}
return

!h::
Send, {PgDn}
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

!+i::
Send, +{Up}
return

!+,::
Send, +{Down}
return

!p::
Send, ^l
return


!w::
Send, ^w
return

!l::
Send, ^{Right}
return


#If



^,::
Send, {Enter}
return


!k::
Send, {BackSpace}
return

!+k::
Send, ^{BackSpace}
return


!j::
Send, ^{Left}
return



!u::
Send, {Left}
return

!o::
Send, {Right}
return



RoA(WinTitle, Target) { ; RoA means "RunOrActivate"
    IfWinExist, %WinTitle%
        WinActivate, %WinTitle%
    else
        Run, %Target%
}


!=::RoA("ahk_class Sublime Text", "C:\Program Files\Sublime Text 3\subl.exe")

!Space::RoA("ahk_class CASCADIA_HOSTING_WINDOW_CLASS", "C:\Users\shaurya\AppData\Local\Microsoft\WindowsApps\wt.exe")


!Backspace::RoA("ahk_class MozillaWindowClass", "C:\Program Files\Mozilla Firefox\firefox.exe")


!^b::
RoA("ahk_class HwndWrapper[DefaultDomain;;0e3c8dcb-8627-48b2-88f2-7c0ee6d7273d]", "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe")
Send, ^+b
return


ExtractAppTitle(FullTitle)
{
    AppTitle := SubStr(FullTitle, InStr(FullTitle, " ", false, -1) + 1)
    Return AppTitle
}



/* ;
***********************************
***** SHORTCUTS CONFIGURATION *****
***********************************
*/


; Alt + ` -  Activate NEXT Window of same type (title checking) of the current APP
!+`::
WinGet, ActiveProcess, ProcessName, A
WinGet, OpenWindowsAmount, Count, ahk_exe %ActiveProcess%

If OpenWindowsAmount = 1  ; If only one Window exist, do nothing
    Return

Else
    {
        WinGetTitle, FullTitle, A
        AppTitle := ExtractAppTitle(FullTitle)

        SetTitleMatchMode, 2
        WinGet, WindowsWithSameTitleList, List, %AppTitle%

        If WindowsWithSameTitleList > 1 ; If several Window of same type (title checking) exist
        {
            WinActivate, % "ahk_id " WindowsWithSameTitleList%WindowsWithSameTitleList% ; Activate next Window
        }
    }
Return
