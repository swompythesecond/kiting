i = irandom_range(1,3);
if i == 1{sprite_index = s_box_boot;}
if i == 2{sprite_index = s_box_dagger;}
if i == 3{sprite_index = s_box_bow;}

tick = 600;

if place_meeting(x,y,o_wall){
	instance_destroy();	
}