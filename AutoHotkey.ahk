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

!s::
Send, {BackSpace}
return

!+s::
Send, ^{BackSpace}
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

!c::
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

#IfWinNotActive, Sublime Text
{
    !+n::
    Send, ^+{Home}
    return

    !+m::
    Send, ^+{End}
    return
    ^+i::
    Send, ^{Home}
    return

    ^+,::
    Send, ^{End}
    return

    ^,::
    Send, {Enter}
    return
}

!+i::
Send, +{Up}
return

!+,::
Send, +{Down}
return
