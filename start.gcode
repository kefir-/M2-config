M108 S155 ; make sure extruder and electronics fans are running
M104 S[first_layer_temperature]
M140 S[first_layer_bed_temperature]
M109 S[first_layer_temperature]
G28 ; home all axes
G1 F10800 ; set high speed
G1 Y20 ; move into the platform along Y
G1 X205 ; move off the platform end along X
G92 E0 ; reset extruder position to 0
G1 F300 ; set suitable speed
G1 E15 ; extrude 15mm
G92 E0 ; reset extruder position to 0
G1 F10800 ; set high speed
G1 X0 ; wipe nozzle and move to X0
