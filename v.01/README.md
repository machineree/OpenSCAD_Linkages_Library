# OpenSCAD_Linkages_Library
OpenSCAD library to create multiple types of mechanical linkages in 2D and 3D.

v.01 - January 31, 2017

+ linkages.scad: 3D Linkages
+ linkages2D.scad: 2D Linkages to be exported .SVG or .DXF
+ linkageex.scad: examples of some of the operations and functions of the library

Add to your library folder in OpenSCAD and use the import function to begin using these modules.

[OpenSCAD Libraries (Manual)](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Libraries "OpenSCAD Libraries")

Currently all models are in inches.

### 3D Linkages (linkages.scad)

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkageex.png?raw=true "Examples")

1. linkwidth(holeD,width,length,thick,slot);

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

2. threelinkwidth(holeD,width,length,thick,three);

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

3. linkwidthrot(holeD,width,length,thick,rot);

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **rot:** angle of rotation for the second hole to create angular linkages

4. linksurround(holeD,surround,length,thick,slot);

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

5. threelinksurround(holeD,surround,length,thick,three);

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

6. linksurroundrot(holeD,surround,length,thick,rot);

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **thick:** thickness of the part or Z value
  + **rot:** angle of rotation for the second hole to create angular linkages
  
### 2D Linkages (linkages2D.scad)

![alt text](https://github.com/machineree/OpenSCAD_Linkages_Library/blob/master/pics/linkage2Dex.png?raw=true "2D Examples")

1. linkwidth2D(holeD,width,length,slot);

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part (must be greater than holeD)
  + **length:** distance between outer holes from center
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

2. threelinkwidth2D(holeD,width,length,three);

  + **holeD:** diameter of the holes at each end
  + **width:** width of the part
  + **length:** distance between outer holes from center
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole

3. linksurround2D(holeD,surround,length,slot);

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **slot:** enter a 1 for a slot down the middle, enter 0 for solid part

4. threelinksurround2D(holeD,surround,length,three);

  + **holeD:** diameter of the holes at each end
  + **surround:** distance from the edge of the hole to the edge of the part
  + **length:** distance between outer holes from center
  + **three:** distance a third hole is from the first hole, choose length/2 for center hole
