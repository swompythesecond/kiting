if tick>0{tick--;}
if tick <= 0 {instance_destroy();}


if place_meeting(x,y,oplayer){
	if i == 1{oplayer.speedup_timer=300;}
	if i == 2{oplayer.dmg_timer=300;}
	if i == 3{oplayer.attack_speed_timer=300;}
	
	instance_destroy();
}