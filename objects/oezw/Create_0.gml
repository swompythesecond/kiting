image_xscale = 0.4;
image_yscale = 0.4;

initialTime = 5;
ground = -1;
time = 30;

flyspeed = 30;

dirmouse = point_direction(x,y,global.wx,global.wy)

motion_set(dirmouse,flyspeed);


image_angle = dirmouse;