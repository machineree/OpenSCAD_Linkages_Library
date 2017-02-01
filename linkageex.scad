include <linkages.scad>

threelinkwidth(.25,.5,3,.125,3/2);
translate([2,0,0]) linkwidth(.25,.5,6,.25,1);
translate([4,0,0]) threelinksurround(.375,.25,4,.5,1);
translate([6,0,0]) linksurround(.375,.5,4,.5,1);
translate([8,0,0]) linkwidthrot(.25,.5,2,.25,45);
