# OpenSCAD_Linkages_Library
### OpenSCAD library to create multiple types of mechanical linkages in 2D and 3D.

Thingiverse Thing: [2081445](http://www.thingiverse.com/thing:2081445)

*v.02 - February 5, 2017*

+ linkages.scad: 2D & 3D linkages in one library

 - Added help function: `linkagehelp();`
 - Added linkwidthangle, linksurroundangle in 2D & 3D for angled flat bar linkages with 2/3 holes
 - Renamed modules to fit scheme
 - Changed slots in linkwidth & linksurround to true/false
 - `scale(in())` for inches
 - `scale(cm())` for centimeters

*v.01 - January 31, 2017*

+ linkages.scad: 3D Linkages
+ linkages2D.scad: 2D Linkages to be exported .SVG or .DXF
+ linkageex.scad: examples of some of the operations and functions of the library

Add to your library folder in OpenSCAD and use the include function to begin using these modules.

```scad
include <linkages.scad>
```    

[OpenSCAD Libraries (Manual)](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Libraries "OpenSCAD Libraries")

Default units are mm.

### 3D Linkages

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkageex.png?raw=true "Examples")

1. `linkwidth(holeD,width,length,thick,slot=false);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **slot:** true for a slot

2. `linkwidththree(holeD,width,length,thick,three);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

3. `linkwidthrot(holeD,width,length,thick,rot);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **rot:** angle of rotation for the second hole to create angular linkages
  
4. `linkwidthangle(holeD,width,length1,length2,thick,angle);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length1:** distance between holes from center, first section
  + **length2:** distance between holes from center, angled/second section
  + **thick:** thickness of the part or Z value
  + **angle:** angle of second section referenced from first section

5. `linksurround(holeD,surround,length,thick,slot=false);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **slot:** true for a slot

6. `linksurroundthree(holeD,surround,length,thick,three);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

7. `linksurroundrot(holeD,surround,length,thick,rot);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **rot:** angle of rotation for the second hole to create angular linkages

8. `linksurroundangle(holeD,surround,length1, length2,thick, angle);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length1:** distance between holes from center, first section
  + **length2:** distance between holes from center, angled/second section
  + **thick:** thickness of the part or Z value
  + **angle:** angle of second section referenced from first section

  
### 2D Linkages

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkage2Dex.png?raw=true "2D Examples")

1. `linkwidth2D(holeD,width,length,slot=false);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length:** distance between outer holes from center
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

2. `linkwidththree2D(holeD,width,length,three);`

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole
  
3. `linkwidthangle2D(holeD,width,length1,length2,angle);`
  
  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length1:** distance between holes from center, first section
  + **length2:** distance between holes from center, angled/second section
  + **angle:** angle of second section referenced from first section

4. `linksurround2D(holeD,surround,length,slot=false);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

5. `linksurroundthree2D(holeD,surround,length,three);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

6. `linksurroundangle2D(holeD,surround,length1,length2,angle);`

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length1:** distance between holes from center, first section
  + **length2:** distance between holes from center, angled/second section
  + **angle:** angle of second section referenced from first section

###Naming Strategy:

link+(width/surround)+(three/rot/angle)+(2D)

###Examples!

Using basic `linkwidth` and the slot:

```openscad
include <linkages.scad>

linkwidth(2,5,20,1);

translate([7.5,0,0])
linkwidth(2,5,20,1,slot=true);
```

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkwidth.png?raw=true "linkwidth")

Using basic `linkwidththree` to determine custom distance to middle hole using a specific number or dividing by length used for the linkage:

```openscad
include <linkages.scad>

linkwidththree(2,5,20,1,4);

translate([7.5,0,0])
linkwidththree(2,5,20,1,20/2);
```

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkwidththree.png?raw=true "linkwidththree")


Comparison of scaling the same linkage in inches, centimeters, and millimeters:

```openscad
include <linkages.scad>

translate([22.5,0,0])
linkwidth(.25,.5,3,.125);

translate([15,0,0])
scale(cm()) linkwidth(.25,.5,3,.125);

scale(in()) linkwidth(.25,.5,3,.125);
```
![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/3Dscaling.png?raw=true "scaling")

Output of help within OpenSCAD console:

```openscad
include <linkages.scad>

linkagehelp();
```

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkagehelp.png?raw=true "linkagehelp")
