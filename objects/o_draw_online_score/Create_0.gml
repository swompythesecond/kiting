highscoree = string(global.points);
name = global.name;
global.score_factor=0;
//global.your_position=0;
//global.scores = 0;
scores = 0;
if global.name_set == 1{	
	o_highscore_getter.send_data = 1;
}
else{
	instance_create_depth(960,480,0,o_entername);
	instance_create_depth(1152,640,0,o_ok);

}




