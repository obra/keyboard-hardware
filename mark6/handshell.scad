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
	translate([0,150,0]) {
		mirror([0,1,0]) {
			leftHand();
		}
	}
}


module leftHand() {
	intersection() { translate([-105,-75,-125]) cube([300,150,300]);
	union() {
		difference() {
			outerShell();
			interior();
		}	
	translate([-90,-74,3]) {
		rotate([6,-3,90]) {

		keyPlateHolder();
		}
		}
	}
	}
}



module outerShell() {
	hull() {
		translate([0,0,0]) {
			rotate([4,4,0]) {
		    		cube([192,155,1], center=true);
			}
		}
		//bottom
		translate([0,0,-22]) {
			cube([190,155,4], center=true);
		}

	
	}
//translate([-95,75,-24]) cube([190,8,24]);

//translate([-95,75,-10]) cube([30,8,28]);


}
module interior() {

	cube([178,145,46],center=true);
		translate([-70,80,-13]) {
	rotate([90,0,0]) {
		cylinder(r=8, h=20,center=true);
	}
	}

}

module cableHole() {
		translate([-100,50,-13]) {
				cube([20,15,14]);
			

	}




}


module handplate() {
union() {
				cube([190,160,2], center=true);
					translate([-95,-75,-0]) {
						rotate([90,90,90]) {
							cylinder(r=5, h=190);
						}
					}
					translate([-95,75,-0]) {
						rotate([90,90,90]) {
							cylinder(r=5, h=190);
						}
					}	
					translate([90,80,-0]) {
						rotate([90,90,0]) {
							cylinder(r=5, h=160);
						}
					}
					translate([-90,80,-0]) {
						rotate([90,90,0]) {
							cylinder(r=5, h=160);
						}
					}
}
}