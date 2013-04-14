use <MCAD/fonts.scad>

module output_text(text) {
				
thisFont=8bit_polyfont();
x_shift=thisFont[0][0];
y_shift=thisFont[0][1];
theseIndicies=search(text,thisFont[2],1,1) ;
			    
	{
      for( j=[0:(len(theseIndicies)-1)] ) 
			translate([j*x_shift,-y_shift/2]) {
       polygon(points=thisFont[2][theseIndicies[j]][6][0],paths=thisFont[2][theseIndicies[j]][6][1]);
      }
  }
}

