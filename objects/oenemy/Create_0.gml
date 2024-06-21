v_scale = random_range(0.5,0.6);
image_xscale = v_scale;
image_yscale = v_scale;
x_value = 0;
zigzag = 0;
zigzagchange = 1;
alarm[0] = 120;
outline_shader = 0;


//image_speed = 0.8
image_speed = 0;

kiting = global.kiting;

enemy = global.enemy;

e_tik = 0;

playerdirection = point_direction(x,y,oplayer.x,oplayer.y);
angle = point_direction(x,y,oplayer.x,oplayer.y);
depth = 0.9;

if global.mode = 1 {image_speed = 1};
if global.mode = 2 {image_speed = 1.1};
if global.mode = 3 {image_speed = 1.5};
if global.mode = 4 {image_speed = 1.1};

upixelH = shader_get_uniform(outline,"pixelH");
upixelW = shader_get_uniform(outline,"pixelW");
texelW = 2*texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = 2*texture_get_texel_height(sprite_get_texture(sprite_index,0));
shader = 0;

hp = 100;

key_set_a = ord(string_upper(global.a_key));

walksp = global.enemyspeed;
walksp = 3;
kiting = global.kiting;

oplayer.enemy_spawned +=1;