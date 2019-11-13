#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Autohotkey Capslock Remapping Script 
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
    ;Cursor keys        - h, j, k, l
    ;Home,End           - N, ;
    ;Page up,down       - - =
    ;Esc                - CapsLock only
    ;CapsLock           - Space

Esc::CapsLock
F12::KeyHistory 
; Capslock only, Send Escape
CapsLock::ESC

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + hjkl (left, down, up, right)
Capslock & h::SendInput {Blind}{Left DownTemp}
Capslock & h up::SendInput {Blind}{Left Up}

Capslock & j::SendInput {Blind}{Down DownTemp}
Capslock & j up::SendInput {Blind}{Down Up}

Capslock & k::SendInput {Blind}{Up DownTemp}
Capslock & k up::SendInput {Blind}{Up Up}

Capslock & l::SendInput {Blind}{Right DownTemp}
Capslock & l up::SendInput {Blind}{Right Up}

; Capslock + n (home, end)
Capslock & n::SendInput {Blind}{Home Down}
Capslock & n up::SendInput {Blind}{Home Up} 

Capslock & e::SendInput {Blind}{End Down}
Capslock & e up::SendInput {Blind}{End Up}

;Caplock & i , Send terminal
Capslock & Space::SendInput ^8

;Capslock & q ==> win  down
Capslock & q::SendInput #{Down}

;Capslock & ` ==> win up
Capslock & `::SendInput #{up}

;Capslock & Tab ==> Alt Tab
Capslock & Tab::SendInput !{Tab}

; Capslock commands that use ctrl
Capslock & t::SendInput ^t

Capslock & w::SendInput ^w

Capslock & p::SendInput ^p

Capslock & r::SendInput ^r

; Capslock and norwegian letters 
Capslock & [::SendInput å
Capslock & `;::SendInput ø
Capslock & '::SendInput æ

Capslock & m::SendInput {// V1IKKEV2: Dette er tekst som ikke lenger brukes i V2.}

; Generating password for foobas with capslock 0 keybinding.
CapsLock & 0::FoobasPasswordWithEnterKeyStrokeAfterGeneratingPasswordWhileKeepingClipboard()


FoobasPasswordWithEnterKeyStrokeAfterGeneratingPasswordWhileKeepingClipboard(){
    year := A_Year
    month := A_MM
    prevClipboard := Clipboard
    Clipboard := Format("udir-{1}-{2}", (month-1)*2, year*2)
    ClipWait, [ SecondsToWait, 1]
    SendInput ^v 
    Sleep, 200
    Send { Enter }
    Clipboard := prevClipboard
}