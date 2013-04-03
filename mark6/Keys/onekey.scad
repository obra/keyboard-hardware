module stem() {
	cube([1.25,4.2,6], center=true);
	rotate([0,0,90]) {
		cube([1.25,4.2,6], center=true);
	}
}


module stem_block() {
	difference() {
		translate([0,0,1]) {
			union() {
				cube([4,6,6],center=true);
				translate([0,0,-3]) {
					//cylinder(h=6, r=2.25, $fn=25);
				}
			}

		}
		translate([0,0,-0.125]) {
		 	stem();
		}
	}
}


module stem_supports() {
	translate([0,0,4]) {
		cube([1,16,1], center=true);
	}
	rotate([0,0,90]) {
	translate([0,0,4]) {
		cube([1,16,1], center=true);
	}
	}
}


module key_shell() {
	difference() {
		intersection() {
			translate([0,0,3]) {
				cylinder(r1=16.5, r2=4.5, h=30, center=true);
			}


			hull() {
				translate([6,6,4]) {sphere(r=2.5);}
	
				translate([6,-6,4]) {sphere(r=2.5);}
				translate([-6,6,4]) {sphere(r=2.5);}
				translate([-6,-6,4]) {sphere(r=2.5);}
	
				cube([17,17,10], center=true);
			}
		}
		translate([0,0,32.7]) {
		sphere(r=30, center=true, $fn=100);

	}

		translate([0,0,-2]) {

			cube([15,15,6], center=true);
		}

	}
}

union() {
	stem_block();
	stem_supports();



	translate([0,0,3]) {
		key_shell();
	}
}

