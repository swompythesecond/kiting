


xx = mouse_x ;
yy = mouse_y ;

global.apm += 1;


if !place_meeting(mouse_x,mouse_y,oenemy){
	instance_create_depth(xx,yy,3,o_walk_an);
}

// auto attack







