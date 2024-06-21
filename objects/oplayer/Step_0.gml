
// keys
key_left_p = keyboard_check_pressed(ord("A"));
key_f    = keyboard_check_pressed(key_set_f);
ml =  mouse_check_button_pressed(mb_left);
mr =  mouse_check_button_pressed(mb_right);
key_e = keyboard_check_pressed(ord("E"));
key_w    = keyboard_check_pressed(ord("W"));
key_d    = keyboard_check_pressed(ord("D"));
key_s    = keyboard_check(ord("S"));
key_q    = keyboard_check_pressed(key_set_q);
key_e = keyboard_check_pressed(key_set_e);
key_z = keyboard_check_pressed(key_set_z);
key_a = keyboard_check_pressed(key_set_a);
key_w    = keyboard_check_pressed(ord("W"));

//move



//locked cam
if key_z && global.locked_cam = 0{

camera_set_view_border(view_camera[0], 1700, 956);
global.locked_cam = 1;

}

else if key_z && global.locked_cam = 1{

camera_set_view_border(view_camera[0], 100, 100);
global.locked_cam = 0;

}

//xy


//wall






if( xx != mouse.none && yy != mouse.none){
	
move_towards_point(xx,yy,walksp);

}
	




if (distance_to_point(xx,yy) < walksp){
	xx = x;
	yy = y;
	speed = 0;
}




//sprite walking




	

//wall 1





// wall port



// flash


if global.f == 1 {

if (flash_cd=0) && (key_f) || (flash_cd=0) && (key_d)
{
direction = point_direction(x,y,mouse_x,mouse_y);
	if distance_to_point(mouse_x,mouse_y) < flash_power{
	x=mouse_x;
	y=mouse_y;
	}
	else{
	speed = flash_power;
	}
flash_cd = 600;
instance_create_layer(oplayer.x,oplayer.y,"Instances",oflash)
global.apm += 1;
xx= oplayer.x;
yy= oplayer.y;

}


}


if (flash_cd > 0) {flash_cd--;}

// fast walk 



//alarm








//tick
global.tick += 1;


//inwall


//spawner








//stop walking
if key_s {
	
	speed = 0;
	xx = oplayer.x
	yy = oplayer.y
	}


	



if mr && instance_exists(oenemy) || key_a && instance_exists(oenemy){
	nearest_enemy = instance_nearest(mouse_x,mouse_y,oenemy);
}


//direction cd

//auto

if key_a{
	instance_create_depth(mouse_x,mouse_y,5,o_red_walkan);
	auto_on =1;
}


if	mr && position_meeting(mouse_x,mouse_y,oenemy){
	auto_on = 1;
}

if instance_exists(oenemy){
// this is the problem
if instance_exists(nearest_enemy){

if mr && position_meeting(mouse_x,mouse_y,oenemy) && distance_to_object(nearest_enemy)<attack_range && auto_cd <= 0 || distance_to_object(nearest_enemy)<300 &&  auto_cd <= 0 && auto_on == 1 && key_a_animation <=0{
	
	key_a_animation = 60/attack_speed;
	image_index = 0;
	image_speed = attack_speed;
	aa = 0;
	auto_on = 1;
	
}
}


// this is the problem

if key_a_animation <(60/attack_speed)-(60/attack_speed)*0.12 && aa==0 && key_a_animation != 0{
	aa=1;
	auto_cd = key_a_animation;
	instance_create_depth(x,y,1,o_auto);
	autos++;
	if instance_exists(nearest_enemy){
	angle = point_direction(x,y,nearest_enemy.x,nearest_enemy.y);
	}
}


if mr && !position_meeting(mouse_x,mouse_y,oenemy){
	key_a_animation = 0;
	auto_on = 0;
	walk_stop = 0;
}




if	auto_cd > 0 && mr && position_meeting(mouse_x,mouse_y,oenemy) && distance_to_object(nearest_enemy)<attack_range{
	walk_stop = 1;
	auto_on = 1;
}





if key_a && distance_to_object(nearest_enemy)<attack_range {
	nearest_enemy = instance_nearest(mouse_x,mouse_y,oenemy);
	walk_stop = 1;
	angle = point_direction(x,y,nearest_enemy.x,nearest_enemy.y);
}


if key_a && distance_to_object(nearest_enemy)>attack_range{
	xx = mouse_x ;
	yy = mouse_y ;
	walk_stop = 0;
	angle = point_direction(x, y, mouse_x, mouse_y);
	if !place_meeting(x,y,o_wall){

		if angle >330 || angle <30{
		sprite_index = s_side;
		image_xscale = v_scale;

		}

		if angle >30 && angle <90{
		sprite_index = s_up;
		image_xscale = v_scale*-1;


		}

		if angle >90 && angle <150{
		sprite_index = s_up;
		image_xscale = v_scale;

		}
		if angle >150 && angle <210{
		sprite_index = s_side;
		image_xscale = v_scale*-1;


		}
		if angle >210 && angle <270{
		sprite_index = s_down;
		image_xscale = v_scale*-1;

		}
		if angle >270 && angle <330{
		sprite_index = s_down;
		image_xscale = v_scale;


		}



}
}



}
else{
	if key_a {
	xx = mouse_x;
	yy = mouse_y;
	angle = point_direction(x, y, mouse_x, mouse_y);
	}
	
}
// end of if instance_exist(oenemy)


if walk_stop = 1{
	speed = 0;
}

if auto_cd > 0{auto_cd --;}






if key_a_animation >0{
	
	key_a_animation--;
	speed = 0;

	
	if angle >330 || angle <30{
	sprite_index = s_side_shot;
	image_xscale = v_scale;

	}

	if angle >30 && angle <90{
	sprite_index = s_up_shot;
	image_xscale = v_scale*-1;


	}

	if angle >90 && angle <150{
	sprite_index = s_up_shot;
	image_xscale = v_scale;

	}
	if angle >150 && angle <210{
	sprite_index = s_side_shot;
	image_xscale = v_scale*-1;


	}
	if angle >210 && angle <270{
	sprite_index = s_down_shot;
	image_xscale = v_scale*-1;

	}
	if angle >270 && angle <330{
	sprite_index = s_down_shot;
	image_xscale = v_scale;
	}

}







	

	








if (speed <=0) {
	walking = 0}
else {walking = 1}

if walking = 1 {
	

if angle >330 || angle <30{
	sprite_index = s_side;
	image_xscale = v_scale;

}

if angle >30 && angle <90{
	sprite_index = s_up;
	image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
	sprite_index = s_up;
	image_xscale = v_scale;

}
if angle >150 && angle <210{
	sprite_index = s_side;
	image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
	sprite_index = s_down;
	image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
	sprite_index = s_down;
	image_xscale = v_scale;


}
}





//xerath q


// e


if enemy_timer <=0 {
	enemy_spawn = 1 ;
	enemy_spawn_where = irandom_range(1,8);
	global.enemy = 1;
}




if enemy_stop  = 0{


if enemy_spawn = 1 { //change 10 to 1 if you want it to work
	
	
	
	
	
	

	
	if enemy_spawn_where = 1 {
		instance_create_depth(irandom_range(0,600),-50,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
	
	if enemy_spawn_where = 2 {
		instance_create_depth(irandom_range(1000,1920),-50,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 3 {
		instance_create_depth(irandom_range(0,1920),1130,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
	
	if enemy_spawn_where = 4 {
		instance_create_depth(irandom_range(0,1920),1130,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
		

	if enemy_spawn_where = 5 {
		instance_create_depth(-50,irandom_range(520,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 6 {
		instance_create_depth(-50,irandom_range(520,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 7 {
		instance_create_depth(2000,irandom_range(0,575),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 8 {
		instance_create_depth(2000,irandom_range(915,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	

}




if enemy_timer > 0 { enemy_timer--;}

global.enemy_timer = enemy_timer_max;
if enemy_timer_max > max_enemy {enemy_timer_max -=enemy_sub}


}





//walk

if key_a_animation == 0 && speed == 0 {
	image_speed = 0;
}
else {
if key_a_animation == 0{
	image_speed = 1;
	}
}




	
	


//angle change

if angle_change = 1 && !place_meeting(x,y,o_wall){
	angle = point_direction(x, y, mouse_x, mouse_y);




	if angle >330 || angle <30{
		sprite_index = s_side;
		image_xscale = v_scale;

	}

	if angle >30 && angle <90{
		sprite_index = s_up;
		image_xscale = v_scale*-1;


	}

	if angle >90 && angle <150{
		sprite_index = s_up;
		image_xscale = v_scale;

	}
	if angle >150 && angle <210{
		sprite_index = s_side;
		image_xscale = v_scale*-1;


	}
	if angle >210 && angle <270{
		sprite_index = s_down;
		image_xscale = v_scale*-1;

	}
	if angle >270 && angle <330{
		sprite_index = s_down;
		image_xscale = v_scale;


	}
	angle_change = 0;
}
	

//infinite kiting
if kiting == 1 {
	
	

	
	if oplayer.x > 4330{
		x-=2468;
		if object_exists(oenemy){
			oenemy.x-=2468;
		}
	}
	
	if perfect_kiting_timer > 0 && perfect_kiting_go = 1{
		perfect_kiting_timer--;
	}
	
	if perfect_kiting_timer<=0 {
		perfect_kiting_timer = 60/attack_speed;
		perfect_kiting_auto ++;
	}
	
	if perfect_kiting_go == 1{
	tick ++;
	distance_walked+=speed;
	average_distance +=distance_to_point(oenemy.x,oenemy.y);
	}
	

}

	
//box timer 
if kiting == 0{

if box_timer = 0{
	instance_create_depth(irandom_range(0,1920),irandom_range(0,1080),5,o_box_random);
	box_timer = box_timer_max;
}

if box_timer > 0 {box_timer--;}


if speedup_timer>0{
	speedup_timer--;
	walksp=normalwalksp*1.5;
	}
if speedup_timer < 1{
	walksp=normalwalksp;
	}
	
	
	
if dmg_timer>0{
	dmg_timer--;
	dmg=dmg_normal*1.5;
	}
if dmg_timer < 1{
	dmg=dmg_normal;
	}


if attack_speed_timer>0{
	attack_speed_timer--;
	attack_speed = attack_speed_normal*2;
	}
if attack_speed_timer < 1{
	attack_speed = attack_speed_normal;
	}
	
}

















// this fixes the bug that he moves in the end

if speed = 0 && key_a==0{
	xx = oplayer.x;
	yy = oplayer.y;
}



if place_meeting(x,y,o_wall){
	x = pos21;
	y = pos22;
	image_speed = 0;

}
else{


	pos11 = pos21;
	pos12 = pos22;
	pos21 = oplayer.x;
	pos22 = oplayer.y;

}




