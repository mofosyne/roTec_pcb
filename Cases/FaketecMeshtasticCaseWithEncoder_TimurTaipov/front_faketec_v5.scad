// Faketec V5 support
// This will modify a case by shifting the type-c port up to account for the removal of the header pins
// Remix Source: https://www.printables.com/model/1102989-faketec-nrf52-meshtastic-case-with-encoderbuzzergp

$fn = 60;

top_port_enable = true;
bottom_port_remove = true;

// This is the size of the header pin offset
// Dev Note: This is removed after 
header_pin_offset = 2.5;

difference()
{
    union()
    {
        translate([2.8,-12.75,1.95]) 
            rotate([-90,0,0])
                import(file = "front.stl");

        // Plug Bottom Hole
        //if (bottom_port_remove)
        union()
        {
            // Chamfer Front
            hull()
            {
                union()
                {
                    translate([0,5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r1 = 5/2, r2 = (3.5 + 0.4)/2);
                    translate([0,-5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r1 = 5/2, r2 = (3.5 + 0.4)/2);
                }
            }
            // Hole Cutout
            hull()
            {
                union()
                {
                    translate([0,5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 1.6, r = (3.5 + 0.4)/2);
                    translate([0,-5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 1.6, r = (3.5 + 0.4)/2);
                }
            }

            // Chamfer Back
            hull()
            {
                union()
                {
                    translate([1.6,5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 1, r2 = 6/2, r1 = (3.5 + 0.4)/2);
                    translate([1.6,-5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 1, r2 = 6/2, r1 = (3.5 + 0.4)/2);
                }
            }
        }

    }

    // Cutout
    union()
    {
        union()
        {
            // Chamfer Front
            hull()
            {
                if (top_port_enable)
                translate([-0.01,0,header_pin_offset])
                union()
                {
                    translate([0,6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r2 = 3/2, r1 = 4/2);
                    translate([0,-6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r2 = 3/2, r1 = 4/2);
                    translate([0,6.2/2,-0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r2 = 3/2, r1 = 4/2);
                    translate([0,-6.2/2,-0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r2 = 3/2, r1 = 4/2);
                }

                if (!bottom_port_remove)
                translate([-0.01,0,0])
                union()
                {
                    translate([-0.01,5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r1 = 4.7/2, r2 = (3.25 + 0.4)/2);
                    translate([-0.01,-5.55/2,0]) 
                        rotate([0,90,0])
                            cylinder(h = 0.5, r1 = 4.7/2, r2 = (3.25 + 0.4)/2);
                }
            }
            // Chamfer Back
            hull()
            {
                if (top_port_enable)
                translate([0,0,header_pin_offset])
                translate([2,0,0])
                union()
                {
                    translate([0,6.2/2,0.3])
                        rotate([0,90,0])
                            cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                    translate([0,-6.2/2,0.3])
                        rotate([0,90,0])
                            cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                    translate([0,6.2/2,-0.3])
                        rotate([0,90,0])
                            cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                    translate([0,-6.2/2,-0.3])
                        rotate([0,90,0])
                            cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                };

                if (!bottom_port_remove)
                translate([0,0,0])
                translate([2,0,0])
                difference()
                {
                    union()
                    {
                        translate([0,6.2/2,0.3])
                            rotate([0,90,0])
                                cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                        translate([0,-6.2/2,0.3])
                            rotate([0,90,0])
                                cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                        translate([0,6.2/2,-0.3])
                            rotate([0,90,0])
                                cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                        translate([0,-6.2/2,-0.3])
                            rotate([0,90,0])
                                cylinder(h = 0.8, r1 = 3/2, r2 = 5/2);
                    }
                    translate([0,0,-2.55]) 
                    cube([3,14,2],center=true);
                }
            }
            // Hole Cutout
            hull()
            {
                if (top_port_enable)
                translate([0,0,header_pin_offset])
                union()
                {
                    translate([0,6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,-6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,6.2/2,-0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,-6.2/2,-0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                }
                if (!bottom_port_remove)
                translate([0,0,0])
                union()
                {
                    translate([0,6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,-6.2/2,0.3]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,6.2/2,-0.3-0.1]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                    translate([0,-6.2/2,-0.3-0.1]) 
                        rotate([0,90,0])
                            cylinder(h = 3, r = 3/2);
                }
            }
        }
    }
}

// Main Type-C Hole Model
if (0)
%hull()
{
    union()
    {
        translate([0,6.2/2,0.3]) 
            rotate([0,90,0])
                cylinder(h = 8, r = 3/2);
        translate([0,-6.2/2,0.3]) 
            rotate([0,90,0])
                cylinder(h = 8, r = 3/2);
        translate([0,6.2/2,-0.3]) 
            rotate([0,90,0])
                cylinder(h = 8, r = 3/2);
        translate([0,-6.2/2,-0.3]) 
            rotate([0,90,0])
                cylinder(h = 8, r = 3/2);
    }
}