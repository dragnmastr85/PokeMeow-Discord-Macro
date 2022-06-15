;Made by dragnmastr85, member of clan Fried Magikarp. DM dragnmastr85#8585 on discord for feedback or help!

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay, 5, 1
MsgBox,4096,Attention!, Make sure Discord is open and you are on your PokeMeow bot channel.
MsgBox,4096,Attention!, Keyboard Shortcuts: `n`n;Pokemon  `;fish  Pull              123 `n`nPokeballs                          qwerty `n`nMoves                                   asdf `n`nSwitch                                     zxc


Gui, +AlwaysOnTop 
Gui, Font, underline s8 w700, Verdana
Gui, Add, Text, center w180 cBlue, PokeMeow Discord Macro
Gui, Font, s7 w400 norm, Verdana
;catching
Gui, Add, Button, w60 gpoke,;pokemon
Gui, Add, Button, xp+60 w60 gfish,;fish
Gui, Add, Button, xp+60 w60 gpull, Pull
;balls
Gui, Add, Picture,xp-120 yp+35 h20 w20 gpb,img/pb.png
Gui, Add, Picture,xp+25 h20 w20 ggb,img/gb.png
Gui, Add, Picture,xp+25 h20 w20 gub,img/ub.png
Gui, Add, Picture,xp+25 h20 w20 gprb,img/prb.png
Gui, Add, Picture,xp+40 h20 w20 gdb,img/db.png
Gui, Add, Picture,xp+40 h20 w20 gmb,img/mb.png
;moves
Gui, Add, Button, xp-157 yp+45 w45 gmove1, Move 1
Gui, Add, Button, xp+45 w45 gmove2, Move 2
Gui, Add, Button, xp-45 yp+20 w45 gmove3, Move 3
Gui, Add, Button, xp+45 w45 gmove4, Move 4
;switch
Gui, Add, Button, xp+65 yp-28 w70 gswitch1, Switch to 1
Gui, Add, Button, yp+20 w70 gswitch2, Switch to 2
Gui, Add, Button, yp+20 w70 gswitch3, Switch to 3
Gui, Add, Button, x45 yp+40 gtoggle, Catch Mode Toggle

Gui, Show, Center, PDM
return

;subroutines
;catching
poke:
gosub grabdiscord
ControlSend,,;p{enter}, ahk_exe Discord.exe
gosub releasediscord
return
fish:
gosub grabdiscord
ControlSend,,;f{enter}, ahk_exe Discord.exe
gosub releasediscord
return
pull:
gosub grabdiscord
ControlSend,,Pull{enter}, ahk_exe Discord.exe
gosub releasediscord
return

;balls
pb:
gosub grabdiscord
ControlSend,,pb{enter}, ahk_exe Discord.exe
gosub releasediscord
return
gb:
gosub grabdiscord
ControlSend,,gb{enter}, ahk_exe Discord.exe
gosub releasediscord
return
ub:
gosub grabdiscord
ControlSend,,ub{enter}, ahk_exe Discord.exe
gosub releasediscord
return
prb:
gosub grabdiscord
ControlSend,,prb{enter}, ahk_exe Discord.exe
gosub releasediscord
return
db:
gosub grabdiscord
ControlSend,,db{enter}, ahk_exe Discord.exe
gosub releasediscord
return
mb:
gosub grabdiscord
ControlSend,,mb{enter}, ahk_exe Discord.exe
gosub releasediscord
return

;moves
move1:
gosub grabdiscord
ControlSend,,1{enter}, ahk_exe Discord.exe
gosub releasediscord
return
move2:
gosub grabdiscord
ControlSend,,2{enter}, ahk_exe Discord.exe
gosub releasediscord
return
move3:
gosub grabdiscord
ControlSend,,3{enter}, ahk_exe Discord.exe
gosub releasediscord
return
move4:
gosub grabdiscord
ControlSend,,4{enter}, ahk_exe Discord.exe
gosub releasediscord
return

;switch
switch1:
gosub grabdiscord
ControlSend,,switch 1{enter}, ahk_exe Discord.exe
gosub releasediscord
return
switch2:
gosub grabdiscord
ControlSend,,switch 2{enter}{enter}, ahk_exe Discord.exe
gosub releasediscord
return
switch3:
gosub grabdiscord
ControlSend,,switch 3{enter}{enter}, ahk_exe Discord.exe
gosub releasediscord
return

;toggle catch mode
toggle:
gosub grabdiscord
ControlSend,,;profile toggle catch{enter}, ahk_exe Discord.exe
gosub releasediscord
return

;discord control
grabdiscord:
WinGet, DiscordState, MinMax, ahk_exe Discord.exe
	If (DiscordState = -1) ; If Discord is minimized, then restore window
		WinRestore, ahk_exe Discord.exe
	ControlFocus,, ahk_exe Discord.exe
return
releasediscord: ; not currently used
WinActivate, ahk_exe PDM.exe
return

GuiClose:
GuiEscape:
SoundBeep, 659, 80
sleep 20
SoundBeep, 784, 80
SoundBeep, 523, 80
sleep 20
ExitApp

#If WinActive("PDM") ; insert your program here
1::
gosub poke
Return
2::
gosub fish
Return
3::
gosub pull
Return
q::
gosub pb
Return
w::
gosub gb
Return
e::
gosub ub
Return
r::
gosub prb
Return
t::
gosub db
Return
y::
gosub mb
Return
a::
gosub move1
Return
s::
gosub move2
Return
d::
gosub move3
Return
f::
gosub move4
Return
z::
gosub switch1
Return
x::
gosub switch2
Return
c::
gosub switch3
Return
#If ; end context sensitivity