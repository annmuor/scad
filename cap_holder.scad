$fn=256;

difference() {
    difference() {
        union() {
            cylinder(h=84, d1=74, d2=80);
            difference() {
                sphere(d=74);
                sphere(d=72);
            }
        }
        cylinder(h=84,d1=72,d2=78);
    }
    translate([0,0,-74/2]) cylinder(h=10,d=3);
}

difference() {
    
    difference() {
        union() {
            translate([20, 20, -40]) cylinder(h=40,d=32);
            rotate([0,0,120]) translate([20, 20, -40]) cylinder(h=40,d=32);
            rotate([0,0,240]) translate([20, 20, -40]) cylinder(h=40,d=32);
        }
    sphere(d=72);
    }
    difference() {
        translate([0,0,-40]) cylinder(h=40,d=100);
        translate([0,0,-40]) cylinder(h=40,d=74);
    }
}
