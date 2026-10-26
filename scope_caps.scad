$fn=512;

DOin = 38.4;

DOout = 40.3;

DIin = 36.0;
DIout = 40.3;

Ho = 7.1;

Hi = 4.7;

translate([30,0,0]) difference() {
    cylinder(h=Ho+2, d=DOout, center = true);
    translate([0,0,2]) cylinder(h=Ho, d=DOin, center = true);
}

translate([-30,0,0]) difference() {
    cylinder(h=Hi+2, d=DIout, center = true);
    translate([0,0,2]) cylinder(h=Hi, d=DIin, center = true);
}