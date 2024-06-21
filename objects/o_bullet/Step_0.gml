if place_meeting(x,y,oplayer){
	room_goto(room2)
	instance_destroy(oplayer)
	instance_destroy(o_bullet)
	if global.points > global.highscore{
		global.highscore =global.points
}
	}
	

