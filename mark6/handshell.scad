use <mark6-keyboard-hand-holder.scad>;

wholeShell();

module wholeShell() {

difference() {
	leftHand();
			cableHole();	
}
rightHand();

}
module rightHand() {
	translate([0,136,0]) {
		mirror([0,1,0]) {
			leftHand();
		}
	}
}


module leftHand() {
	union() {
		difference() {
			outerShell();
			interior();
			//ribbing();
		}	
	translate([-91,-65,-12]) {
		rotate([-4,-3,90]) {

		keyPlateHolder();
		}
		}
	}
	
}



module outerShell() {
	hull() {
		translate([0,0,0]) {
			rotate([3,-4,0]) {
		    		cube([192,140,1], center=true);
			}
		}
		//bottom
		translate([0,0,-18]) {
			cube([190,140,1], center=true);
		}

	
	}
//translate([-95,75,-24]) cube([190,8,24]);

//translate([-95,75,-10]) cube([30,8,28]);


}
module interior() {
	translate([0,0,0])
	cube([180,130,26],center=true);
		translate([40,70,-2]) {
	rotate([90,0,0]) {
		cylinder(r=8, h=20,center=true);
	}
	}

}

module cableHole() {
		translate([-100,40,-13]) {
				cube([20,15,8]);
			

	}




}

module ribbing() {
	translate([-180,0,-22])
	rotate([45,90,0]) {
		for(x = [0: 12 : 500]) {
		translate([0,x,0])
			cylinder(r=5, h=300);
		}
	}
}

