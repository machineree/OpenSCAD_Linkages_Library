//2D LINKAGES LIBRARY v.01

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), and finally 1 for a slot running through the part or 0 for no slot
module linkwidth2D(holeD,width,length,slot){
    module slotz(){
            hull(){
                translate([0,width,0]) circle(d=holeD, $fn=100);
                translate([0,length-width,0]) circle(d=holeD, $fn=100);
            }
        }
    
    difference(){
        hull(){
            circle(d=width, $fn=100);
            translate([0,length,0]) circle(d=width, $fn=100);
        }
        circle(d=holeD, $fn=100);
        translate([0,length,0]) circle(d=holeD, $fn=100);  
      if (slot==1)
                {
                slotz();
            }  
    }
                echo("linkwidth2D OpenSCAD Linkages Library v.01 added"); 

}

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the overall width, the length (hole center <--> hole center), and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage
module threelinkwidth2D(holeD,width,length,three){
  
    difference(){
        hull(){
            circle(d=width, $fn=100);
            translate([0,length,0]) circle(d=width, $fn=100);
        }
        circle(d=holeD, $fn=100);
        translate([0,length,0]) circle(d=holeD, $fn=100);  
      translate([0,three,0]) circle(d=holeD, $fn=100);

             
    }
            echo("threelinkwidth2D OpenSCAD Linkages Library v.01 added"); 

}

//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), and finally 1 for a slot running through the part or 0 for no slot
module linksurround2D(holeD,surround,length,slot){
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
            if (slot==1)
                {
                slotz();
            }
            
    }
        echo("linksurround2D OpenSCAD Linkages Library v.01 added"); 
}


//Create a linkage based on the final width of the part, enter the diameter of the holes for the linkage, the surrounding distance from the edge of the part to the outside edge of the hole, the length (hole center <--> hole center), and finally enter the distance to middle hole ((hole center <--> hole center) for a three-bar linkage
module threelinksurround2D(holeD,surround,length,three){
  
    difference(){
        hull(){
            circle(d=holeD+2*surround, $fn=100);
            translate([0,length,0]) circle(d=holeD+2*surround, $fn=100);
        }
        circle(d=holeD, $fn=100);
        translate([0,length,0]) circle(d=holeD, $fn=100); 
        translate([0,three,0]) circle(d=holeD, $fn=100);    
    }
    echo("threelinksurround2D OpenSCAD Linkages Library v.01 added"); 
}