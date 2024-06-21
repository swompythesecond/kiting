image_xscale = 1;
image_yscale = image_yscale;
depth = 0;

ofshoot = 2;
direction = point_direction(x,y,oplayer.x,oplayer.y);
direction = direction + random_range(-ofshoot,ofshoot);
speed = global.bullet_speed;
image_angle = direction;
player_health = 3;
time = 100;