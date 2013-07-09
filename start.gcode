M84 S0 ; don't let go of motors
M108 S155 ; make sure extruder and electronics fans are running
M140 S[first_layer_bed_temperature]
M104 S[first_layer_temperature] ; use M104 S{print_temperature} in cura
; now we've started heating, but let's move off the platform while we wait (and drool)
G28 X0 Y0; home X and Y
G1 F10800 ; set high speed
G1 Y20 ; move into the platform along Y
G1 X205 ; move off the platform end along X
G28 Z0 ; home Z now - blobs won't hit the platform
G1 F400
G1 Z10 ; lift Z a little
M190 S[first_layer_bed_temperature] ; heat bed
M109 S[first_layer_temperature] ; heat nozzle
G28 Z0 ; home Z
G92 E0 ; reset extruder position to 0
G1 F300 ; set suitable speed
G1 E25 ; extrude 25mm
G92 E0 ; reset extruder position to 0 - needed for cura/SF
G1 F10800 ; set wipe speed
G1 X0 ; wipe nozzle and move to X0
