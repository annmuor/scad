$fn=512;
difference() {
    cylinder(d=8.5,h=4.7);
    cylinder(d=5, h=4.7);
}

translate([0,0,2.7]) difference() {
cylinder(d=12,h=2);
cylinder(d=8.5,h=2);
}
difference() {
translate([0,0,2.7])
difference() {
cylinder(d=12,h=45);
cylinder(d=9.4,h=45);
};

difference() {
union() {
    for(i=[3.0:1.0:45]) {
        translate([0,0,i]) cylinder(d=12.0,h=0.1);
    }
}
union() {
    for(i=[3.0:1.0:45]) {
        translate([0,0,i]) cylinder(d=11.8,h=0.1);
    }
}
}
}