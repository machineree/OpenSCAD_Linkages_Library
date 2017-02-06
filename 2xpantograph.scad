//2X pantograph example

include <linkages.scad>

range=12;
thick=.5;

color("red")
linkwidththree (1,2,range,thick,range/4);
color("blue")
translate([range/2,range/4,0])linkwidththree (1,2,3*range/4,thick,range/4);
color("yellow")
translate([0,range/4,thick]) rotate([0,0,-90]) linkwidth(1,2,range/2,thick);
color("green")
translate([0,range,thick]) rotate([0,0,-90]) linkwidththree (1,2,range,thick,range/2);