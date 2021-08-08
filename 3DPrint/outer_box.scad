//Procedural Project Box Screws

//40mm x 60 board size

inside_width = 22;
inside_length = 24;
inside_height = 22;


wall_thickness=1.6;

$fn=40;

translate([0,inside_length+2*wall_thickness,0])rotate([0,0,90])mirror([1,1,0])difference() {
    cube([inside_width+2*wall_thickness, 
        inside_length+2*wall_thickness,
        inside_height+wall_thickness]);

    translate([wall_thickness,wall_thickness,wall_thickness])cube([inside_width, 
        inside_length,
        inside_height]);
    

 translate([-5,7+wall_thickness,wall_thickness+2])cube([10,13,20]);
 
 translate([inside_width+2*wall_thickness-4,6+wall_thickness,wall_thickness+inside_height-10])cube([10,15,10]);
 
    
    }



 


translate([-inside_width-3*wall_thickness,0,0]) {

  union() {
    cube([inside_width+2*wall_thickness, 
        inside_length+2*wall_thickness,
        wall_thickness]);

    difference(){translate([wall_thickness,wall_thickness,wall_thickness])cube([inside_width, 
        inside_length,
        wall_thickness]);
     
       translate([2*wall_thickness,2*wall_thickness,wall_thickness]) cube([inside_width-2*wall_thickness, 
        inside_length-2*wall_thickness,
        wall_thickness]);
    }
    
    translate([inside_width/2+wall_thickness,inside_length/2+wall_thickness])difference(){
        resize([15,inside_length+20])cylinder(d=10,h=wall_thickness);
        translate([0,-inside_length/2-5])cylinder(d=3,h=10*wall_thickness);
        translate([0,inside_length/2+5])cylinder(d=3,h=10*wall_thickness);
    }

  }
}
    

        