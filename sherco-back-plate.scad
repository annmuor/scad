$fn = 512;

difference() {
difference() {
union() {
cube([36,36, 1.8], true);
translate([0,0,1.8]) cylinder(h=3.8,d=25, center = true);
}
translate([0,0,1.8]) cylinder(h=3.8,d=22, center = true);
}
union() {
translate([18-3.2,18-3.2,0]) cylinder(h=10,d=2.5, center=true);
translate([-18+3.2,18-3.2,0]) cylinder(h=10,d=2.5, center=true);
translate([-18+3.2,-18+3.2,0]) cylinder(h=10,d=2.5, center=true);
translate([18-3.2,-18+3.2,0]) cylinder(h=10,d=2.5, center=true);
translate([0,0,0]) cylinder(h=10,d=2, center=true);
}
}
