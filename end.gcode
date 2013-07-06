M104 S0 ; turn off temperature
M140 S0 ; turn off bed temperature
M106 S255 ; Set fan to full power
G1 X0  ; home X axis
G91 ; Set relative positioning
G1 Z30 ; Lift 3cm
G90 ; Return to absolute positioning
G1 Y80 ; Set a sensible Y coordinate
G1 F450 ; Set slow speed
; Now move the X axis back and forth for a while to cool
;G1 X160 ; Move X to end
;G1 X40; Move X to start
;G1 X160 ; Move X to end
;G1 X40; Move X to start
;G1 X160 ; Move X to end
;G1 X40; Move X to start
;G1 X160 ; Move X to end
G1 X0; Home X
M106 S0 ; Disable fan
G1 F10800 ; High speed
G1 Y220 ; present parts for removal
M84     ; disable motors
M108 S0 ; turn off extruder and electronics fans
