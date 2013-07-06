M2-config
=========

Configuration settings for my MakerGear M2 printer. Should contain some
generic start.gcode instructions, end.gcode instructions, and configuration 
profiles for the programs I use. They are:

* slic3r
* pronterface
* tatlin

Files:

* dot-pronsolerc - My Printrun / pronterface configuration. Custom buttons for quick platform calibration and to switch fans on and off. Rename this file to $HOME/.pronsolerc (on Linux anyway).
* runtatlin.sh - slic3r "post-processing script" that simply launches tatlin with the latest gcode. Make sure it's last in the chain if you do other post-processing steps.
* slic3r-config.ini - The main slic3r configuration. Import into slic3r with File -> Load config, and save all tabs if you want to keep it.
* start.gcode - basic start.gcode sequence, should be compatible with most slic3rs. Note that cura/Skeinforge/SFACT strips the M108 command, so make sure you start your system fan manually. Does nozzle/bed warming, homing, nozzle priming and wiping, so should be safe to start unsupervised from a cold printer. Don't take my word for it though - please make sure your gcode is safe, and don't run your printer without supervision.
* end.gcode - basic end.gcode with a "cooling program" to cool the print faster. Disables all fans and heaters, so should allow for unsupervised prints. Don't take my word for it though - please make sure your gcode is safe, and don't run your printer without supervision.
