if instance_exists(enemy){
	move_towards_point(enemy.x,enemy.y,15);
	image_angle = point_direction(x,y,enemy.x,enemy.y);
	if place_meeting(x,y,enemy){
		instance_destroy()
		enemy.hp-=dmg;
	}
}
else{
instance_destroy();	
}