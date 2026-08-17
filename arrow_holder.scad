$fn = 512;

module tube() {
    difference() {
        cylinder(h=50,d=12);
        cylinder(h=60,d=10);
    }
}

union() {
cube([290,2,100]);
rotate([90,0,0]) cube([290,2,290]);
translate([0,-290,0]) cube([290,2,100]);
translate([0,-288,0]) cube([2,290,100]);
translate([288,-288,0]) cube([2,290,100]);
}

union() {
for (a = [10:30:280]) {
    for (b = [10:30:290]) {
        translate([a,-b,0]) tube();
    }
}
}

//difference() {
//translate([0,0,98]) rotate([90,0,0]) cube([290,2,290]);
//    union() {
//            for (a = [10:30:280]) {
//                for (b = [10:30:290]) {
//                    translate([a,-b,98]) cylinder(h=12,d=10);
//        }
//    }
//    }
//}
