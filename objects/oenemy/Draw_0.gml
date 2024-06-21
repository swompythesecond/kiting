if position_meeting(mouse_x,mouse_y,self) || outline_shader = 1{
	shader_set(outline);
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelH,texelH);
	draw_self();
	shader_reset();
	
}
/*
if position_meeting(mouse_x,mouse_y,self) || outline_shader = 1{
	image_blend = c_red;
	
	}
else{
	image_blend = -1;
}
*/
draw_self();
draw_set_color(c_green);
draw_rectangle(x-50,y-80,x-50+hp,y-90,false);