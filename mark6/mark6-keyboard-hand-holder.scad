keyPlateHolder();

module keyPlateHolder() {
	bevelEdge(153);
	translate([40,1,0])	bevelClip();
	translate([100,1,0])	bevelClip();


	translate([-2,-183,0]) mirror([0,1,0]) {
		translate([40,1,0])	bevelClip();
		translate([100,1,0])	bevelClip();

		bevelEdge(155);
	
	}
	
	translate([0,-181,0]) {
		rotate([0,0,90]) {
			bevelEdge(183);
			translate([40,1,0])	bevelClip();
			translate([130,1,0])	bevelClip();


			translate([0,-151,0]) mirror([0,1,0]) {
				bevelEdge(183);
	//			translate([40,1,0])	bevelClip();
//				translate([130,1,0])	bevelClip();

			}

		}
	
	}
}

module bevelClip(){

	translate([0,0,7.5]) {
		color("blue")	bevel(16);
	}
}

module bevelEdge(length) {
	union() {

		bevel(length);

		bevelEdgeOuterWall(length);

	}
}

module bevel(length) {
		difference() {
			union () {
			
				// Angled bottom lip and angled support
			difference () {
					color("red") {rotate([45,0,0])	cube([length, 5,5]);}
					translate([0,-2.5,5]) 	cube([length,5,5]);
				}	
				color("green") {
				translate([0,-3.5,3.5])	cube([length,5,2]);
	}
			}
			
			// cut off the outside edge of the angled support
			translate([0,1,1]) cube([length,3,5]);
		
		}
}

module bevelEdgeOuterWall(length) {
		translate([-3,0,-4]) {		
			cube([length+6,5,17]);
	
		}
}