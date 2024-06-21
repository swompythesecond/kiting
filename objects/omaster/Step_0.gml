x=oplayer.x;
y=oplayer.y-150;

if (time > 0) {
    time-= 1;
    alarm[0] = 30;
} else {
    {
        instance_destroy();
    }
}
