// layer height: 0.3mm
// First layer height: 115%
// Fill density 0.4
// rectilinear fill
// First layer: 200% width



keyswitch_x=14;
keyswitch_y=14;
key_spacing=18.29;
keyswitch_plate_thickness = 1.5;



if(0) {


mirror([0,0	,1]) {
	translate([0,0,-4.48]) {
		//		keyboard();
		difference() {
		 cube([22,22,4.48]);
			translate([-2,0,0]) {
key(0.8,0.6);
//					
	//keyColumn(0.8,0.6);
//			keyColumn(0.8,1.6);

			//keyColumn(0.8,2.6);

//			keyColumn(0.8,3.6);
		}
		}	

	}
}

}

mirror([0,0,1]) {


	translate([0,0,-4.45]) {
		intersection() {
	  		keyboard();
			translate([82,-50,0]) {
			cube([150,100,75], center=true);
			}
		}
	
	}
}

module keyboard( ) {

	difference() {
//			cube([230,300,7.5],center=true);
			roundtopBox();
			translate([0,0,-1]) {
				difference() { 
					translate([0,0,-2]) {
					cube([210,280,15], center=true);
					}
					// Support struts

					cube([10,10,15], center=true);
					translate([50,70,0]) {				
						cube([10,10,15], center=true);
					}
					translate([50,-70,0]) {				

						cube([10,10,15], center=true);
					}

				}
			}
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
		
		// usb cable cutout
		translate([-110,0,0]) {
			cube([10,25,10], center=true);
			}
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
			key_support(); 
		translate([0,0,0]) {
			translate([0,0,3+(keyswitch_plate_thickness/2)]) {
				cube(size=[keyswitch_x,keyswitch_y,keyswitch_plate_thickness], center=true);
						cube(size=[keyswitch_x,keyswitch_y,1], center=true);
			
				}
		
		}
		translate([0,0,3.5+keyswitch_plate_thickness/2]) {
			cube([keyswitch_x+1, keyswitch_y+1,1], center=true);
		}
	}
}


module key_support() {
	union() {
		translate([0,0,0]) {
	//		cube(size=[key_spacing,key_spacing,5], center=true);			
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
		}
	}
}




module roundtopBox () {
	pad = 0;	// Padding to maintain manifold
	box_l = 230;	// Length
	box_w = 300;	// Width
	box_h = 17;	// Height
	round_r = 16;	// Radius of round
	smooth =48;	// Number of facets of rounding cylinder
	
	// To fix the corners cut the main cube with smaller cubes with spheres removed
	difference() {
		cube([box_l, box_w, box_h], center = true);
	
		translate([0, -box_w/2+round_r, box_h/2-round_r]) {
			difference() {
				translate([0,-round_r-pad,round_r+pad])
					cube([box_l+2*pad, round_r*2+pad, round_r*2+pad], center = true);
				rotate(a=[0,90,0])
					cylinder(box_l+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
		translate([0, box_w/2-round_r, box_h/2-round_r]) {
			difference() {
				translate([0,round_r+pad,round_r+pad])
					cube([box_l+2*pad, round_r*2+pad, round_r*2+pad], center = true);
				rotate(a=[0,90,0])
					cylinder(box_l+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
	
	// ----
	
		translate([-box_l/2+round_r, box_w/2-round_r, 0]) {
			difference() {
				translate([-round_r-pad,round_r+pad,0])
					cube([round_r*2+pad, round_r*2+pad, box_h+2*pad], center = true);
				cylinder(box_h+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
		translate([box_l/2-round_r, box_w/2-round_r, 0]) {
			difference() {
				translate([round_r+pad,round_r+pad,0])
					cube([round_r*2+pad, round_r*2+pad, box_h+2*pad], center = true);
				cylinder(box_h+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
	
		translate([-box_l/2+round_r, -box_w/2+round_r, 0]) {
			difference() {
				translate([-round_r-pad,-round_r-pad,0])
					cube([round_r*2+pad, round_r*2+pad, box_h+2*pad], center = true);
				cylinder(box_h+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
		translate([box_l/2-round_r, -box_w/2+round_r, 0]) {
			difference() {
				translate([round_r+pad,-round_r-pad,0])
					cube([round_r*2+pad, round_r*2+pad, box_h+2*pad], center = true);
				cylinder(box_h+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
	
	// ----
	
		translate([-box_l/2+round_r, 0, box_h/2-round_r]) {
			difference() {
				translate([-round_r-pad, 0, round_r+pad])
					cube([round_r*2+pad, box_w+2*pad, round_r*2+pad], center = true);
				rotate(a=[0,90,90])
					cylinder(box_w+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
		translate([box_l/2-round_r, 0, box_h/2-round_r]) {
			difference() {
				translate([round_r+pad, 0, round_r+pad])
					cube([round_r*2+pad, box_w+2*pad, round_r*2+pad], center = true);
				rotate(a=[0,90,90])
					cylinder(box_w+4*pad,round_r,round_r,center=true,$fn=smooth);
			}
		}
	
	
	// ----
	
		translate([box_l/2-round_r, box_w/2-round_r, box_h/2-round_r]) {
			difference() {
				translate([round_r+pad, round_r+pad, round_r+pad])
					cube([round_r*2+pad, round_r*2+pad, round_r*2+pad], center = true);
				sphere(round_r,center=true,$fn=smooth);
			}
		}
		translate([-box_l/2+round_r, box_w/2-round_r, box_h/2-round_r]) {
			difference() {
				translate([-round_r-pad, round_r+pad, round_r+pad])
					cube([round_r*2+pad, round_r*2+pad, round_r*2+pad], center = true);
				sphere(round_r,center=true,$fn=smooth);
			}
		}
		translate([box_l/2-round_r, -box_w/2+round_r, box_h/2-round_r]) {
			difference() {
				translate([round_r+pad, -round_r-pad, round_r+pad])
					cube([round_r*2+pad, round_r*2+pad, round_r*2+pad], center = true);
				sphere(round_r,center=true,$fn=smooth);
			}
		}
	    translate([-box_l/2+round_r, -box_w/2+round_r, box_h/2-round_r]) {
	         difference() {
	             translate([-round_r-pad, -round_r-pad, round_r+pad])
	                cube([round_r*2+pad, round_r*2+pad, round_r*2+pad], center = true);
	              sphere(round_r,center=true,$fn=smooth);
	        }
	    }
	


	}



}
