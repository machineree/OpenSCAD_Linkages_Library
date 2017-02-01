//LINKAGES LIBRARY v.01

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally 1 for a slot running through the part or 0 for no slot
module linkwidth(holeD,width,length,thick,slot){
    module slotz(){
            hull(){
                translate([0,width,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
                translate([0,length-width,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);
            }
        }
    
    difference(){
        hull(){
            cylinder(h=thick, d=width, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=width, $fn=100,center=true);
        }
        cylinder(h=thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);  
      if (slot==1)
                {
                slotz();
            }  
    }
                echo("linkwidth OpenSCAD Linkages Library v.01 added"); 

}

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage
module threelinkwidth(holeD,width,length,thick,three){
  
    difference(){
        hull(){
            cylinder(h=thick, d=width, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=width, $fn=100,center=true);
        }
        cylinder(h=thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);  
      translate([0,three,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);

             
    }
            echo("threelinkwidth OpenSCAD Linkages Library v.01 added"); 

}

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), thickness of the part, and finally angle for twist
module linkwidthrot(holeD,width,length,thick,rot){

        
    
    difference(){
        hull(){
            cylinder(h=thick, d=width, $fn=100,center=true);
            translate([0,length,0]) rotate([0,rot,0]) cylinder(h=thick, d=width, $fn=100,center=true);
        }
        cylinder(h=2*thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) rotate([0,rot,0]) cylinder(h=2*thick, d=holeD, $fn=100,center=true);  
      
    }
                echo("linkwidthrot OpenSCAD Linkages Library v.01 added"); 

}


//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally 1 for a slot running through the part or 0 for no slot
module linksurround(holeD,surround,length,thick,slot){
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
            if (slot==1)
                {
                slotz();
            }
            
    }
        echo("linksurround OpenSCAD Linkages Library v.01 added"); 
}


//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage
module threelinksurround(holeD,surround,length,thick,three){
  
    difference(){
        hull(){
            cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
            translate([0,length,0]) cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
        }
        cylinder(h=thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) cylinder(h=thick, d=holeD, $fn=100,center=true); 
        translate([0,three,0]) cylinder(h=thick, d=holeD, $fn=100,center=true);    
    }
    echo("threelinksurround OpenSCAD Linkages Library v.01 added"); 
}

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), thickness of the part, and finally angle for twist
module linksurroundrot(holeD,surround,length,thick,rot){
    
        
    difference(){
        hull(){
            cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
            translate([0,length,0]) rotate([0,rot,0]) cylinder(h=thick, d=holeD+2*surround, $fn=100,center=true);
        }
        cylinder(h=2*thick, d=holeD, $fn=100,center=true);
        translate([0,length,0]) rotate([0,rot,0]) cylinder(h=2*thick, d=holeD, $fn=100,center=true); 
            
            
    }
        echo("linksurroundrot OpenSCAD Linkages Library v.01 added"); 
}