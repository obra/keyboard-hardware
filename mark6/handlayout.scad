

keyswitch_x=13.8;
keyswitch_y=13.8;
key_spacing=18.29;
keyswitch_plate_thickness = 1.7;


difference() {
	translate([82,40,-1.27]){	cube([180,150,4.2], center=true);}
	union(){ 
		hand();		
	}

}


module hand() {
	rotate([0,0,0]) {
		keyColumn(1.2,-1);
	}
	keyColumn(1,0);

	rotate([0,0,-5]) {
		keyColumn(0.1,1.5);
	}
	rotate([0,0,-10]) {

		keyColumn(0,2.75);

	}
	rotate([0,0,-15]) {

		keyColumn(-0.2,4);
		keyColumn(-0,5);

		key(1.5,6);
		key(2.5,6);

		thumbKeys();
	}
}



module thumbKeys() {
			key(4.5,3.95);
			key(4.7,5.1,[0,0,-20]);
			key(5.25,6.1,[0,0,-40]);
			key(6.15,6.84,[0,0,-60]);
			key(7.2,7.25,[0,0,-80]);


}




module keyColumn(x,y) {
	translate([(x*key_spacing),(y*key_spacing),0]) {
		key(0,0);
		key(1,0);
	 	key(2,0);
		key(3,0);

	}

}


module key(x,y,rotation) {
	translate([(x*key_spacing),(y*key_spacing),-0.01]) {
		rotate(rotation) {
			key_inner();
		}
	}
}

module key_inner() {
	union() {
			translate([0,0,-3.5]) {
			key_support(); 
		}
		//	translate([0,0,-3-(keyswitch_plate_thickness/2)]) {
				cube(size=[keyswitch_x,keyswitch_y,keyswitch_plate_thickness], center=true);
			
		//		}
		
	}
}


module key_support() {
	union() {
		translate([0,0,0]) {
			//cube(size=[key_spacing,key_spacing,5], center=true);			
		}
		difference() {
			cube(size=[key_spacing-2,key_spacing-2,6], center=true);
			// Little squares in the corners to improve the stability of the key supports
			translate([7.8,7.8,0]) {
				cube(size=[1.3,1.3,6], center=true);
			}
			translate([-7.8,-7.8,0]) {
				cube(size=[1.3,1.3,6], center=true);
			}
			translate([7.8,-7.8,0]) {
				cube(size=[1.3,1.3,6], center=true);
			}
			translate([-7.8,7.8,0]) {
				cube(size=[1.3,1.3,6], center=true);
			}
		
			interior_bevels();



		}
	}
}

module interior_bevels() {

	translate([0,9,4]){
		rotate([45,0,0]) {
			cube([28,4,4],center=true);
		}
	}
	translate([0,-9,4]){
		rotate([45,0,0]) {
			cube([28,4,4],center=true);
		}
	}

	translate([-9,0,4]){
		rotate([0,45,0]) {
			cube([4,28,4],center=true);
		}
	}
	translate([9,0,4]){
		rotate([0,45,0]) {
			cube([4,28,4],center=true);
		}
	}
}


