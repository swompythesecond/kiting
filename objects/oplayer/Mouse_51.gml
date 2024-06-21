


xx = mouse_x ;
yy = mouse_y ;




if key_q_animation <= 0{
	angle = point_direction(x, y, mouse_x, mouse_y);
}

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








