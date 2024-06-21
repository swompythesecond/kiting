playerdir = point_direction(x,y,oplayer.x,oplayer.y);
angle = point_direction(x,y,oplayer.x,oplayer.y);
mr =  mouse_check_button_pressed(mb_right);
ml =  mouse_check_button_pressed(mb_left);
key_a = keyboard_check_pressed(key_set_a);


if distance_to_object(oplayer) > 150{
motion_set(playerdir+zigzag,walksp)
}
else{
	move_towards_point(oplayer.x,oplayer.y,walksp);
}



zigzag+=zigzagchange;

if zigzag>30{
	zigzagchange = -1;
}
if zigzag<-30{
	zigzagchange = 1;
}


x_value += 0.1;




if e_tik > 0 {e_tik --;};






if angle >330 || angle <30{
sprite_index = s_enemy_side;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_enemy_up;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_enemy_up;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_enemy_side;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_enemy_down;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_enemy_down;
image_xscale = v_scale;


}

if kiting == 1{
	hp = 100;	
}


if hp <= 0 {
	instance_destroy();
	oplayer.score_points +=10;
	instance_create_depth(x,y,1,o_money_coin);
}


if mr && position_meeting(mouse_x,mouse_y,self){
	outline_shader = 1;
}

if mr && position_meeting(mouse_x,mouse_y,oenemy) && !position_meeting(mouse_x,mouse_y,self){
	outline_shader = 0;
}

if ml{
	outline_shader = 0;
}


if kiting = 1{
if oplayer.perfect_kiting_go = 0{
	speed = 0;	
	image_speed = 0;
}
else{
	image_speed = 1;
}
}

