//LINKAGES LIBRARY v.02

function in()=[25.4,25.4,25.4];
function cm()=[10,10,10];

//3D LINKAGES:

//----Section 1 - Linkages based on total width of the part - linkwidth

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally true/false for a slot running through the part*/

module linkwidth(holeD,width,length,thick,slot=false){
    module slotz(){
            hull(){
                translate([0,width,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
                translate([0,length-width,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
       }
    }
    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{
        difference(){
            hull(){
                cylinder(h=thick, d=width, $fn=100,center=true);
                translate([0,length,0]) cylinder(h=thick, d=width, $fn=100,center=true);
            }
            cylinder(h=thick, d=holeD, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);  
            if (slot==true){
                slotz();
            }
            if (slot!=true){
            }
        }  
    }
    echo("linkwidth OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage*/

module linkwidththree(holeD,width,length,thick,three){
    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{
        difference(){
            hull(){
                cylinder(h=thick, d=width, $fn=100,center=true);
                translate([0,length,0]) cylinder(h=thick, d=width, $fn=100,center=true);
            }
            cylinder(h=thick, d=holeD, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);  
            translate([0,three,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
        }
    echo("linkwidththree OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
    }
}

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally angle for twist*/

module linkwidthrot(holeD,width,length,thick,rot){
    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{
        difference(){
            hull(){
                cylinder(h=thick, d=width, $fn=100,center=true);
                translate([0,length,0]) rotate([0,rot,0]) cylinder(h=thick, d=width, $fn=100,center=true);
            }
            cylinder(h=2*thick, d=holeD, $fn=100,center=true);
            translate([0,length,0]) rotate([0,rot,0]) cylinder(h=2*thick, d=holeD, $fn=100,center=true);  
        }
    echo("linkwidthrot OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
    }
}

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center) for both bars, thickness of the part, and finally angle for linkage*/

module linkwidthangle(holeD,width,length1,length2,thick,angle){
    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");}
    else{
        union(){
            translate([0,length1]) rotate([0,0,angle])
            difference(){        
                hull(){
                    translate([0,length2]) cylinder(h=thick, d=width, $fn=100);
                    cylinder(h=thick, d=width, $fn=100);
                }
                cylinder(h=thick, d=holeD, $fn=100);
                translate([0,length2]) cylinder(h=thick, d=holeD, $fn=100);            
            }
            difference(){
                hull(){
                    cylinder(h=thick, d=width, $fn=100);
                    translate([0,length1,0]) cylinder(h=thick, d=width, $fn=100);
                }
                cylinder(h=thick, d=holeD, $fn=100);
                translate([0,length1,0]) cylinder(h=thick, d=holeD, $fn=100);  
            }
        }  
    }
    echo("linkwidthangle OpenSCAD Linkages Library v.02 added");
    echo("use linkagehelp(); for general commands and input help");
}

//Section 2 - Linkages based on the surround of the hole or distance from the edge of the pivot hole to the edge of the part - linksurround

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally true/false for a slot running through the part*/

module linksurround(holeD,surround,length,thick,slot=false){
    module slotz(){
        hull(){
            translate([0,holeD+2*surround,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
            translate([0,length-(holeD+2*surround),0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
        }
    }
    difference(){
        hull(){
            cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
        }
        cylinder(h=thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true); 
        if (slot==true){
                slotz();
        }
        if (slot!=true){
        }
    }
    echo("linksurround OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}


/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage*/

module linksurroundthree(holeD,surround,length,thick,three){
    difference(){
        hull(){
            cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
        }
        cylinder(h=thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true); 
        translate([0,three,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);    
    }
    echo("linksurroundthree OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally angle for twist*/

module linksurroundrot(holeD,surround,length,thick,rot){
    difference(){
        hull(){
            cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
            translate([0,length,0]) rotate([0,rot,0]) cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
        }
        cylinder(h=2*thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) rotate([0,rot,0]) cylinder(h=2*thick, d=holeD, $fn=100,center=true); 
    }
    echo("linksurroundrot OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center) for both bars, thickness of the part, and finally angle for linkage*/

module linksurroundangle(holeD,surround,length1, length2,thick, angle) { 
    union(){
        translate([0,length1]) rotate([0,0,angle])
        difference(){        
            hull(){
                translate([0,length2]) circle(h=thick, d=holeD+2*surround, $fn=100);
                circle(h=thick, d=holeD+2*surround, $fn=100);
            }
            circle(h=thick, d=holeD, $fn=100);
            translate([0,length2]) circle(h=thick, d=holeD, $fn=100);            
        }
        difference(){
            hull(){
                circle(h=thick, d=holeD+2*surround, $fn=100);
                translate([0,length1]) circle(h=thick, d=holeD+2*surround, $fn=100);
            }
            circle(h=thick, d=holeD, $fn=100);
            translate([0,length1]) circle(h=thick, d=holeD, $fn=100);
        }
    }
    echo("linksurroundangle OpenSCAD Linkages Library v.02 added");
    echo("use linkagehelp(); for general commands and input help");
}

//2D Linkages

//----Section1 - Linkages based on total width of the part - linkwidth2D


/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), and finally true/flase for a slot running through the part*/

module linkwidth2D(holeD,width,length,slot=false){
    module slotz(){
        hull(){
            translate([0,width,0]) circle(d=holeD, $fn=100);
            translate([0,length-width,0]) circle(d=holeD, $fn=100);
        }
    }

    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{    
        difference(){
            hull(){
                circle(d=width, $fn=100);
                translate([0,length,0]) circle(d=width, $fn=100);
            }
            circle(d=holeD, $fn=100);
            translate([0,length,0]) circle(d=holeD, $fn=100);  
            if (slot==true){
                slotz();
            if (slot!=true){}
            }
        }
    echo("linkwidth2D OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
    }
}

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage*/

module linkwidththree2D(holeD,width,length,three){
    if (width<=holeD){
        echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{
        difference(){
            hull(){
                circle(d=width, $fn=100);
                translate([0,length,0]) circle(d=width, $fn=100);
            }
            circle(d=holeD, $fn=100);
            translate([0,length,0]) circle(d=holeD, $fn=100);  
            translate([0,three,0]) circle(d=holeD, $fn=100);
        }
    echo("linkwidththree2D OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
    }
}

/*Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center) for both bars,  and finally angle for linkage*/

module linkwidthangle2D(holeD,width,length1,length2,angle){
    if (width<=holeD){
    echo("WIDTH DIAMETER MUST BE LARGER THAN HOLE DIAMETER");
    }
    else{
        union(){
            translate([0,length1]) rotate([0,0,angle])
            difference(){        
                hull(){
                    translate([0,length2]) circle(d=width, $fn=100);
                    circle(d=width, $fn=100);
                }
                circle(d=holeD, $fn=100);
                translate([0,length2]) circle(d=holeD, $fn=100);            
            }
            difference(){
                hull(){
                    circle(d=width, $fn=100);
                    translate([0,length1,0]) circle(d=width, $fn=100);
                }
                circle(d=holeD, $fn=100);
                translate([0,length1,0]) circle(d=holeD, $fn=100);  
            }
        }
    echo("linkwidthangle2D OpenSCAD Linkages Library v.02 added");
    echo("use linkagehelp(); for general commands and input help");
    }
}

//----Section 2 - Linkages based on the surround of the hole or distance from the edge of the pivot hole to the edge of the part - linksurround2D

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), and finally true/false for a slot running through the part*/

module linksurround2D(holeD,surround,length,slot=false){
    module slotz(){ 
            hull(){
                translate([0,holeD+2*surround,0]) circle(d=holeD, $fn=100);
                translate([0,length-(holeD+2*surround),0]) circle(d=holeD, $fn=100);
            }
        }
    difference(){
        hull(){
            circle(d=holeD+2*surround, $fn=100);
            translate([0,length,0]) circle(d=holeD+2*surround, $fn=100);
        }
        circle(d=holeD, $fn=100);
        translate([0,length,0]) circle(d=holeD, $fn=100); 
        if (slot==true){
            slotz();
        if (slot!=true){}
        }
    }
    echo("linksurround2D OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage*/

module linksurroundthree2D(holeD,surround,length,three){
    difference(){
        hull(){
            circle(d=holeD+2*surround, $fn=100);
            translate([0,length,0]) circle(d=holeD+2*surround, $fn=100);
        }
        circle(d=holeD, $fn=100);
        translate([0,length,0]) circle(d=holeD, $fn=100); 
        translate([0,three,0]) circle(d=holeD, $fn=100);    
    }
    echo("linksurroundthree2D OpenSCAD Linkages Library v.02 added"); 
    echo("use linkagehelp(); for general commands and input help");
}

/*Create a linkage based on the surround of the hole, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center) for both bars,  and finally angle for linkage*/

module linksurroundangle2D(holeD,surround,length1,length2,angle) { 
    union(){
        translate([0,length1]) rotate([0,0,angle])
            difference(){        
                hull(){
                    translate([0,length2]) circle(d=holeD+2*surround, $fn=100);
                    circle(d=holeD+2*surround, $fn=100);
                }
                circle(d=holeD, $fn=100);
                translate([0,length2]) circle(d=holeD, $fn=100);            
            }
        difference(){
            hull(){
                circle(d=holeD+2*surround, $fn=100);
                translate([0,length1]) circle(d=holeD+2*surround, $fn=100);
            }
            circle(d=holeD, $fn=100);
            translate([0,length1]) circle(d=holeD, $fn=100);
        }
    }
    echo("linksurroundangle2D OpenSCAD Linkages Library v.02 added");
    echo("use linkagehelp(); for general commands and input help");
}

/*help in command*/

module linkagehelp(){
    echo("LINKAGE LIBRARY v.02 - Designed by machineree");
    echo("2D and 3D linkage variations include:");
    echo("");
    echo("3D Linkages - Based on part width - ");
    echo("linkwidth(holeD,width,length,thick,slot) - 2 Hole Straight Linkage");
    echo("linkwidththree(holeD,width,length,thick,three) - 3 Hole Straight Linkage");
    echo("linkwidthrot(holeD,width,length,thick,rot) - 2 Hole Linkage with Angled Twist");
    echo("linkwidthangle(holeD,width,length1,length2,thick,angle) - 2/3 Hole Angled Flat Linkage");
    echo("");
    echo("3D Linkages - Based on distance from edge of hole to part edge - ");
    echo("linksurround(holeD,surround,length,thick,slot) - 2 Hole Straight Linkage");
    echo("linksurroundthree(holeD,surround,length,thick,three) - 3 Hole Straight Linkage");
    echo("linksurroundrot(holeD,surround,length,thick,rot) - 2 Hole Linkage with Angled Twist");
    echo("linksurroundangle(holeD,surround,length1, length2,thick, angle) - 2/3 Hole Angled Flat Linkage");
    echo("");
    echo("2D Linkages - Based on part width - ");
    echo("linkwidth2D(holeD,width,length,slot) - 2 Hole Straight Linkage");
    echo("linkwidththree2D(holeD,width,length,three) - 3 Hole Straight Linkage");
    echo("linkwidthangle2D(holeD,width,length1,length2,angle) - 2/3 Hole Angled Flat Linkage");
    echo("");
    echo("2D Linkages - Based on distance from edge of hole to part edge - ");
    echo("linksurround2D(holeD,surround,length,slot) - 2 Hole Straight Linkage");
    echo("linksurroundthree2D(holeD,surround,length,three) - 3 Hole Straight Linkage");
    echo("linksurroundangle2D(holeD,surround,length1,length2,angle) - 2/3 Hole Angled Flat Linkage");
    echo("");
    echo("use scale(in()) for inches ex: scale(in()) linkwidth(.25,.5,2,.125);");
    echo("use scale(cm()) for centimeters ex: scale(cm()) linkwidth(2,5,1,.5);");
    echo("");
    echo("Check for updates & more details on machineree.com, GitHub, and Thingiverse!");
}