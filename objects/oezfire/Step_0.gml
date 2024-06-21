x = oplayer.x;
y = oplayer.y;
image_angle = point_direction(x,y,global.xx,global.yy)-90;

if (time> 0) {
    time-= 1;

} else {
    {
        instance_destroy();
    }
}


