//Procedural Project Box Screws

//40mm x 60 board size

inside_width = 62;
inside_length = 95;
inside_height = 30;
pole_height=6;
pole_wall_dist = 4.5;

$fn=40;

wall_thickness=1.6;

module doPole(trans=[0,0], dia=2.9, base=4, ph=pole_height) {
    translate([2*wall_thickness,2*wall_thickness])translate(trans) {
        cylinder(d=dia,h=ph);
        cylinder(d=base,h=2*wall_thickness);
    }
        
}



mirror([0,0,1])
union(){
//translate([0,inside_length+2*wall_thickness,0])rotate([0,0,90])
    mirror([0,0,0])
    difference() {
    cube([inside_width+2*wall_thickness, 
        inside_length+2*wall_thickness,
        inside_height+wall_thickness]);
    translate([wall_thickness,wall_thickness,wall_thickness])cube([inside_width, 
        inside_length,
        inside_height]);

    // USB
    translate([19+wall_thickness,-5,inside_height+wall_thickness-17])cube([13,10,17]);        
    
    // DHT11 in
    translate([-5,27+wall_thickness,inside_height+wall_thickness-22])cube([11,13,22]);
        
    // Power / DHT out
    translate([inside_width+2*wall_thickness-5,35+wall_thickness,wall_thickness+inside_height-14])cube([10,30,14]);

    // MOSFET
    translate([33+wall_thickness,inside_length-5,wall_thickness+inside_height-15])cube([12,10,15]);
        

    // OLED
    translate([30.8+wall_thickness,21+wall_thickness,wall_thickness-10])cube([19.8,28.5,20]);

    
}

 // Poles for OLED
    doPole([wall_thickness+31-2-3.5, wall_thickness+21-1],1.4) ;
    doPole([wall_thickness+31-2-3.5, wall_thickness+21-1+27.5-4],1.4) ;
    doPole([wall_thickness+31-2-3.5+28-4, wall_thickness+21-1],2) ;
    doPole([wall_thickness+31-2-3.5+28-4, wall_thickness+21-1+27.5-4],1.4) ;



//translate([-inside_width-3*wall_thickness,0,0]) {
//
//  union() {
//    cube([inside_width+2*wall_thickness, 
//        inside_length+2*wall_thickness,
//        wall_thickness]);
//
//    difference(){translate([wall_thickness,wall_thickness,wall_thickness])cube([inside_width, 
//        inside_length,
//        wall_thickness]);
//      
//         translate([2*wall_thickness,2*wall_thickness,wall_thickness]) cube([inside_width-2*wall_thickness, 
//        inside_length-2*wall_thickness,
//        wall_thickness]);
//    }
//    translate([inside_width/2+wall_thickness,inside_length/2+wall_thickness])difference(){
//        resize([20,inside_length+25])cylinder(d=10,h=wall_thickness);
//        translate([0,-inside_length/2-7])cylinder(d=3,h=10*wall_thickness);
//        translate([0,inside_length/2+7])cylinder(d=3,h=10*wall_thickness);
//    }
//    
//}
//
//
//union(){
//    
//    
//    // Poles for main board
//    doPole([pole_wall_dist, pole_wall_dist]) ;
//    doPole([pole_wall_dist+48.26,pole_wall_dist]) ;
//    doPole([pole_wall_dist, pole_wall_dist+63.5]) ;
//    doPole([pole_wall_dist+48.26, pole_wall_dist+63.5]) ;
//
//    // Poles for MOSFET
//    doPole([10, 76.5], 1.9, 4);
//    doPole([10, 90], 1.9, 4) ;
//    doPole([30, 83], 1.9, 4, 3*wall_thickness);
//    
//  }
//  }
}
    

        