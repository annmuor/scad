$fn=128;
translate([0,0,21]) rotate([-90,0,0]) union() {
  difference() {
    difference() {
      cube([21,21,21]);
      translate([15,9,0]) cylinder(d=10,h=19);
    }
    translate([15,0,10.5]) rotate([-90,0,0]) cylinder(d=5,h=21);
  }
}
difference() {
  translate([21,-2,0]) cube([10,25, 21]);
  translate([21,5,0]) cube([10,11.8,21]);
}

//    translate([21,0,0]) difference() {
//    cylinder(h=21,d=5);
//    translate([-10,0,0]) cube([20,10,21]);
//    }

translate([21,21,0]) difference() {
  cylinder(h=21,d=5);
  translate([-10,-10,0]) cube([20,10,21]);
}



module static_nose() {
  translate([-7,11/2,0])cube([7,10,21]);

  translate([0,6,0]) difference() {
    cylinder(h=21,d=11);
    translate([-10,0,0]) cube([20,10,21]);
  }

  translate([0,15,0]) difference() {
    cylinder(h=21,d=11);
    translate([-10,-10,0]) cube([20,10,21]);
  }

  points = [
    [0,0,0], // 0
    [0,0,13], // 1
    [7,0,7], // 2
    [7,0,0], // 3

    [0,10,0], // 4
    [0,10,13], // 5
    [7,10,7], // 6
    [7,10,0], // 7


  ];

  faces = [
    [0,1,2,3], // front
    [4,5,6,7], // back
    [5,1,2,6],
    [2,6,7,3],
    [0,1,5,4],
    [0,3,7,4]


  ];
  difference() {
    difference() {
      translate([-13,11/2,0]) polyhedron(points=points,faces=faces);
      translate([-10,21/2,0]) cylinder(h=13,d=3);
    }
    translate([-13,9,0]) cube([3,3,13]);
  }
}

// dynamic nose
module dynamic_nose() {
  difference() {
    union() {
      translate([-9,0,0]) cube([9,3, 21]);
      translate([-9,18,0]) cube([9,3, 21]);
    }

    union() {
      translate([-5,21/2,21/2]) rotate([90,0,0]) cylinder(h=21,d=6, center=true);
      translate([-5,0,4]) rotate([90,0,0]) cylinder(h=15,d=3, center=true);
      translate([-5,0,21-4]) rotate([90,0,0]) cylinder(h=15,d=3, center=true);
      translate([-5,15,4]) rotate([90,0,0]) cylinder(h=15,d=2, center=true);
      translate([-5,15,21-4]) rotate([90,0,0]) cylinder(h=15,d=2, center=true);
    }
  }
}
