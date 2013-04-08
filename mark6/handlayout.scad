

keyswitch_x=13.8;
keyswitch_y=13.8;
key_spacing=18.6;
keyswitch_plate_thickness = 1.7;

//regularHand();
leftHand();

module leftHand() {
	mirror([0,1,0]) {
		regularHand();
	}
}

//turnedHand();
module turnedHand() {

difference() {
	translate([82,32,-1.27]){	cube([220,140,4.2], center=true);}
	union(){ 
		rotate([0,0,-3]) {
			hand();		
		}
	}

}


}

module regularHand() {

difference() {
	translate([82,40,-1.27]){	cube([180,150,4.2], center=true);}
	union(){ 
		hand();		
	}

}

}


module hand() {
	rotate([0,0,-4]) {
		keyColumn(0.7,-1.05);
	    keyColumn(0.5,-0.05);
	}

	rotate([0,0,-8]) {
		keyColumn(0.1,1.4);
	}
	rotate([0,0,-10]) {

		keyColumn(-0.2,2.7);

	}
	rotate([0,0,-15]) {

		keyColumn(-0.2,4);
		keyColumn(0,5);

		key(1.5,6);
		key(2.5,6);

	}
    translate([165,33,0]) {
		thumbKeys();
    }
}



module oldThumbKeys() {
			key(4.5,4);
			key(4.6,5.1,[0,0,-20]);
			key(5.1,6.05,[0,0,-35]);
			key(5.85,6.85,[0,0,-50]);
			key(6.75,7.4,[0,0,-65]);


}


module thumbKeys() {
rotate([0,0,65]) assign(
    radius=70.0,
    keys=20 // keys in a sphere
    ) { 
        translate([21,41,0]) {
            rotate([0,0,63]) {
                 key(0,0);
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


