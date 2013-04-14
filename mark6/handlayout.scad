

keyswitch_x=14.0;
keyswitch_y=14.0;
key_spacing=18.6;
keyswitch_plate_thickness = 1.7;


use <output_text.scad>;

//hand();
leftHand();
//rightHand();

module rightHand() {
	mirror([0,1,0]) {
		leftHand();
	}
}


module leftHand() {

difference() {
	translate([87,40,-1.27]){	cube([181,130,4.2], center=true);}
	union(){ 
		hand();		
	}
	scale ([0.5,0.5,1]) translate([340,130,-4.2]) rotate([0,0,45])
	legend();


	translate([180,-26,-5]) { popout_notch();}
}

}


module popout_notch() {

	cylinder(r=25, h=8);
}

module hand() {
	rotate([0,0,-9]) {
		//keyColumn(0.7,-1.05);
	    keyColumn(0.5,-0.05);
	}

	rotate([0,0,-13]) {
		keyColumn(0.1,1.4);
	}
	rotate([0,0,-15]) {

		keyColumn(-0.2,2.7);

	}
	rotate([0,0,-20]) {

		keyColumn(-0.2,4);
		keyColumn(0,5);

		key(2.2,6);
		key(3.2,6);

	}
    translate([165,24,0]) {
		thumbKeys();
    }



}

module legend() {
	mirror([1,0,0]){
	linear_extrude(height=3) { 
		output_text("14mm square 1.7mm deep 3mm txt");
	}
	linear_extrude(height=3) { 
		translate([0,8,0]) {output_text("181x130. 4.2mm tall");}
	}
	linear_extrude(height=3) { 
		translate([0,16,0]) {output_text("4/11/2013 - Jesse Vincent");}
	}
}


}


module thumbKeys() {
rotate([0,0,61]) assign(
    radius=70.0,
    keys=20 // keys in a sphere
    ) { 
        translate([21,41,0]) {
            rotate([0,0,63]) {
//                 key(0,0);
            }
        }
    for(i=[1:(keys/4)]) assign( rotAngle=i*360/keys ) {



     rotate([0,0,rotAngle+180/keys])
      translate([radius,0,0])
        key(0,0);
    }
}
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
	    	cube(size=[keyswitch_x,keyswitch_y,keyswitch_plate_thickness], center=true);
		
		
	}
}


module key_support() {
	union() {
		translate([0,0,0]) {
			//cube(size=[key_spacing,key_spacing,5], center=true);			
		}
		difference() {
			cube(size=[key_spacing-2,key_spacing-2,6], center=true);
		//	support_corner_squares();

			interior_bevels();



		}
	}
}

module support_corner_squares() {
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


