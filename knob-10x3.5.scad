$fn = 512;



difference() {
union() {
for(i = [1:180]) {
    rotate([0,0,i*2]) cube([5,5,10], center=true);
}
}
translate([0,0,2.5]) cylinder(h=5, d=3.5, center=true);
}
//
//// knob stuff
//difference() {
//difference() {
//cylinder(h=10, d=7, center=true);
//
//}


//}