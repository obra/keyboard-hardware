// layer height: 0.3mm
// First layer height: 115%
// Fill density 0.4
// rectilinear fill
// First layer: 200% width

include <roundtopbox.scad>;
include <handlayout.scad>;
include <usbcutout.scad>;



mirror([0,0,1]) {
	translate([0,0,-4.45]) {
	  		keyboard();
	}
}

module keyboard( ) {
	difference() {
		roundtopBox();
        keyboard_inside();
        flat_hands();
        usbcutout();
    }
}

module flat_hands (){
	translate([-80,0,4]){
		translate([0,-110,0]) {
			hand();
		}
		mirror([0,1,0]) {
			translate([0,-110,0]) {
    			hand();
			}
		}
	}
}

module keyboard_inside(){
	translate([0,0,-1]) {
		difference() { 
			translate([0,0,-2]) {
				cube([210,280,15], center=true);
			}
			// Support struts
            support_struts();
            }
		}
}


module support_struts() {
	cube([10,10,15], center=true);
	translate([50,70,0]) {				
		cube([10,10,15], center=true);
	}
	translate([50,-70,0]) {				

		cube([10,10,15], center=true);
	}
}
