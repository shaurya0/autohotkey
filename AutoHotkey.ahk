^h::
Send, {Delete}
return

^+h::
Send, +{Delete}
return

!k::
Send, {BackSpace}
return

!+k::
Send, ^{BackSpace}
return


!i::
Send, {Up}
return

!,::
Send, {Down}
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

!n::
Send, ^{Home}
return

!m::
Send, ^{End}
return

!+n::
Send, ^+{Home}
return

!+m::
Send, ^+{End}
return

!+j::
Send, ^+{Left}
return

!+l::
Send, ^+{Right}
return

#IfWinNotActive, Sublime Text
^+i::
Send, {Home}
return

^+,::
Send, {End}
return


^,::
Send, {Enter}
return
#IfWinNotActive

!+i::
Send, +{Up}
return

!+,::
Send, +{Down}
return

