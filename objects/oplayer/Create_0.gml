v_scale = 0.55;
image_xscale = v_scale;
image_yscale = v_scale;                        
depth = 2 ;
image_speed = 1.2;

enum mouse {none}


score_points = 0;
global.points = 0;
global.tick = 1;

normalwalksp=5.5;
walksp = normalwalksp;
flash_power = 170;
flash_cd = 0 ;

xx = mouse.none;
yy = mouse.none;


pauseframes_max =40;
pauseframes = 0;



walking = 0;
global.apm = 1;


key_q_cd = 0;
global.q_cd_reset = 0;
key_q_cd_max = 40;
key_q_animation = 0;
key_q_tick =0;

e_tik = 0;

global.highestcombo = 0;

global.x_q_up = 1;

global.r_on = 0;


enemy_spawn_where = irandom_range(1,8);














e_dash_tick = 0;
key_e_tick =  0;



key_q_animation = 0;

angle_change = 0;

leblanc_w_cd = 0;
leblanc_w_cd = 0;

global.wx = mouse_x;
global.wy = mouse_y;




global.enemyspeed = global.attack_speed/1.6;
enemy_timer_max = 375/global.attack_speed;
max_enemy = 16;
enemy_timer = enemy_timer_max;
enemy_spawn = 1; 
enemy_sub = 0.001;



if global.background == 2 {
	x = 864;
	y = 448;
}

pos11= oplayer.x;
pos12= oplayer.y;
pos21= oplayer.x;
pos22= oplayer.y;

key_set_q = ord(string_upper(global.q_key));
key_set_e = ord(string_upper(global.e_key));
key_set_f = ord(string_upper(global.f_key));
key_set_z = ord(string_upper(global.z_key));
key_set_a = ord(string_upper(global.a_key));




randomize();

//gui

var0 = 19;
tik = 0;

angle = point_direction(x, y, mouse_x, mouse_y);
show_gui = global.on_off;


pre_auto_cd = 0;
key_a_animation = 0;
aa=0;
auto_cd =0;
auto_on = 0;
walk_stop = 0;
attack_range = 300;
nearest_enemy = oplayer;
perfect_kiting_timer = 1;
perfect_kiting_auto = 0;
perfect_kiting_go = 0;
autos=0;
kiting = global.kiting;
e = global.e;
box_timer_max = 600;
box_timer = box_timer_max;
speedup_timer = 0;
dmg_timer = 0;
attack_speed_timer = 0;
dmg_normal = 20;
dmg = dmg_normal;
attack_speed_normal = global.attack_speed;
global.draw_attack_speed = attack_speed_normal;
attack_speed = attack_speed_normal;

distance_walked = 0;
average_distance = 0;
tick = 0;

enemy_spawned = 0;

enemy_stop = 0;
if kiting == 1{
enemy_stop = 1;	
}

if global.attack_speed ==2.5 && global.kiting == 0{
	global.ranked =1;
}
else {
	global.ranked =0;
}


if instance_exists(oenemy){
nearest_enemy = instance_nearest(x,y,oenemy);
}
show_debug_overlay(true);
