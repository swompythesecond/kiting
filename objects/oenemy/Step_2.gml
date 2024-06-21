if place_meeting(x,y,oplayer){
	
	global.autos = oplayer.autos;
	global.perfect_kiting_auto = oplayer.perfect_kiting_auto;
	global.average_distance = oplayer.average_distance/oplayer.tick;
	global.distance_walked =oplayer.distance_walked;
	global.time_played = oplayer.tick/60;
	global.points = oplayer.score_points;
	global.enemy_spawned = oplayer.enemy_spawned;
	
	room_goto(room2);
	instance_destroy(oplayer);
	instance_destroy(oezq);
	

}