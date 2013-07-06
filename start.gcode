M108 S155 ; make sure extruder and electronics fans are running
M104 S[first_layer_temperature] ; use M104 S{print_temperature} in cura
M140 S[first_layer_bed_temperature]
G28 X0 ; home X axis
G28 Y0 ; home Y axis
G1 F10800 ; set high speed
G1 Y20 ; move into the platform along Y
G1 X205 ; move off the platform end along X
M190 S[first_layer_bed_temperature]
M109 S[first_layer_temperature]
G28 Z0 ; home Z axis
G92 E0 ; reset extruder position to 0
G1 F300 ; set suitable speed
G1 E20 ; extrude 20mm
G92 E0 ; reset extruder position to 0 - needed for cura/SF
G1 F2400 ; set wipe speed
G1 X180 ; wipe nozzle
