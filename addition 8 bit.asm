org 100h
; Initialize Data Segment
mov ax, 0b800h ; Video memory segment for color text mode
mov ds, ax

; Set up initial values
mov al, 02h  ; AL = 2
mov bl, 04h  ; BL = 4
add al, bl   ; AL = AL + BL (AL = 6)

; Convert result to ASCII
add al, 30h  ; Convert AL to ASCII character (30h is the ASCII offset for digits)

; Display the result on the screen
mov ah, 0Eh 
int 10h      
ret
