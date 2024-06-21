draw_self();
if speedup_timer > 0{
	draw_set_color(c_yellow);
}
if dmg_timer > 0{
	draw_set_color(c_red);
}
if attack_speed_timer>0{
	draw_set_color(c_blue);
}


if speedup_timer>0{
	draw_rectangle(x-50,y-100,x-50+speedup_timer/3.5,y-110,false);
}
if dmg_timer>0{
	draw_rectangle(x-50,y-100,x-50+dmg_timer/3.5,y-110,false);
}
if attack_speed_timer>0{
	draw_rectangle(x-50,y-100,x-50+attack_speed_timer/3.5,y-110,false);
}

