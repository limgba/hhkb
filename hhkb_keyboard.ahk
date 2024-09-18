SetCapsLockState, AlwaysOff
CapsLock & Tab::
if GetKeyState("CapsLock", "T") =1
{
	SetCapsLockState, AlwaysOff
}
else
{
	SetCapsLockState, AlwaysOn
}
return
CapsLock & r::Reload
CapsLock & s::Suspend
CapsLock & e::Edit
CapsLock & j::
SendInput, {LCtrl Down}
SendInput, {Insert}
SendInput, {LCtrl Up}
return
CapsLock & m::
SendInput, {LShift Down}
SendInput, {Insert}
SendInput, {LShift Up}
return
CapsLock & k::Home
CapsLock & ,::End
CapsLock & l::PgUp
CapsLock & .::PgDn
CapsLock & [::Up
CapsLock & /::Down
CapsLock & `;::Left
CapsLock & '::Right
CapsLock & 1::F1
CapsLock & 2::F2
CapsLock & 3::F3
CapsLock & 4::F4
CapsLock & 5::F5
CapsLock & 6::F6
CapsLock & 7::F7
CapsLock & 8::F8
CapsLock & 9::F9
CapsLock & 0::F10
CapsLock & -::F11
CapsLock & =::F12
CapsLock & u::ESC
CapsLock & b::
SendInput, :buffer{Space}
return
CapsLock & o::
SendInput, o{Esc}
return
CapsLock & f::
SendInput, :.{LShift Down}1{LShift Up}find . -name{Space}
return
CapsLock & g::
SendInput, :.{LShift Down}1{LShift Up}grep -rn{Space}
return
CapsLock & v::
SendInput, :.{LCtrl Down}r{LCtrl Up}"{Enter}
return
CapsLock & c::
SendInput, {Esc}0vf:hy
SendInput, :vs {LCtrl Down}r{LCtrl Up}"{Enter}
SendInput, {LCtrl Down}w{LCtrl Up}l
SendInput, {Esc}0f:lvf:hy
SendInput, {LCtrl Down}w{LCtrl Up}h
SendInput, {LCtrl Down}r{LCtrl Up}"{Enter}
return
CapsLock & y::
SendInput, yy:vs {LCtrl Down}r{LCtrl Up}"{BackSpace}{Enter}
return
CapsLock & w::
SendInput, :w{Enter}
return
CapsLock & q::
SendInput, :q{Enter}
return
CapsLock & i::
MouseClick, Left, 42, 947, 2
MouseClickDrag, Left, 42, 947, 534, 973
SendInput, {LCtrl Down}{Insert}{LCtrl Up}
SendInput, {RWin Down}{8}{RWin Up}
return
CapsLock & d::
Send, {Delete}
return
CapsLock & \::
SendInput, {Delete}
return
CapsLock & a::
gm := []
gm.Push("/gm aaa")
gm.Push("/gm bbb")
MouseClick, Left, 39, 107, 1
For i In gm
{
	MouseClick, Left, 718, 301, 1
	SendInput, {LCtrl Down}a{LCtrl Up}{Delete}
	Send, % gm[i]
	MouseClick, Left, 954, 301, 1
	Sleep, 100
}
MouseClick, Left, 651, 618, 1
MouseClick, Left, 1265, 65, 1
return
