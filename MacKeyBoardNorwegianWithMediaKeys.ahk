;--------------------------------------------------
; Mac keyboard to Windows Key Mappings, Norwegian.
;==================================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
; <^>! = ALTGR
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}

F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key


; Eject Key
F20::SendInput {Insert}

; Alt + Insert (New File in ReSharper)
;LAlt & Insert::SendInput {LCtrl Down}{LAlt Down}{Insert}

; Alt + Insert (Generate Code ReSharper)
LAlt & F13::SendInput {LAlt Down}{Insert}


; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
; F15::SendInput {Pause}

; Delete files
RWin & BS::SendInput {Delete}
LWin & BS::SendInput {Delete}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::^s

; Selecting
#a::^a

; Copying
#c::^c

; Pasting
#v::^v

; Cutting
#x::^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::^z

; Redo
#y::^y

; New Window
#n::^n

; New tab
#t::^t

; close tab
#w::^w

; Bold:
#b::^b

; Italic:
#i::^i

; Bookmark (at least in some browsers). This one is in conflict with Show Desktop, uncomment if you need it.
;#d::^d

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab
;#^+::SendInput +{AltTab}

; minimize windows
#m::WinMinimize,a


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map @ correctly
'::@

; Map ' correctly
|::'

;Mapping * correctly
Shift & '::SendInput {NumpadMult}

; Map Shift + Alt + 7 to \
+!7::SendInput {\}
+<^>!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map Alt + o to ø
!o::SendInput {ø}

; Map Shift + 4 to $
+4::SendInput {$}

; Map Alt + 8 to [
!8::SendInput {[}

; Map Alt + 9 to ]
!9::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + - to –
!-::SendInput {–}

; Map Alt + 8 to {
!+8::SendInput {{}
+<^>!+8::SendInput {{}

; Map Alt + 9 to }
+!9::SendInput {}}
+<^>!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + 7 to |
!7::SendInput {|}
<^>!7::SendInput {|}

; Map Alt + W to ∑
!w::SendInput {∑}

; Map Alt + N to ~
!n::SendInput {~}


; OSX NAVIGATION AND SELECTION WITH CMD
#Up::Send {ctrl down}{Home}{ctrl up}
#Down::Send {ctrl down}{End}{ctrl up}
#+Up::Send {ctrl down}{shift down}{Home}{shift up}{ctrl up}
#+Down::Send {ctrl down}{shift down}{End}{shift up}{ctrl up}
#Left::Send {Home}
#Right::Send {End}
#+Left::Send {shift down}{Home}{shift up}
#+Right::Send {shift down}{End}{shift up}

; OSX NAVIGATION AND SELECTION WITH ALT
!Left::Send {ctrl down}{Left}{ctrl up}
!Right::Send {ctrl down}{Right}{ctrl up}
!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}

;Allow Command +Left/Right to be used as Home/End
;Lwin & Left::SendInput {Home}
;Lwin & Right::SendInput {End}


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

;New Tab
#t::Send ^t

;Close Tab
#w::Send ^w

;Hacking copy paste in Chrome
#c::Send ^c
#v::Send ^v
#x::Send ^x

;Focus URL-field, not lock PC
;^l::return
;#l::SendInput ^{l}


#IfWinActive
