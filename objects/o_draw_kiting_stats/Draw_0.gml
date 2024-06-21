if global.kiting = 1{
	draw_set_color(c_white);
	draw_set_font(BebasNeue);
	draw_set_halign(fa_center);
	draw_text(x,y,"Attack Speed = "+string(global.draw_attack_speed)+"/s");
	draw_text(x,y+100,"Possible Attacks = "+ string(global.perfect_kiting_auto));
	draw_text(x,y+200,"Your Attacks = "+ string(global.autos));
	draw_text(x,y+300,"Distance Walked = "+string(global.distance_walked)+"px");
	draw_text(x,y+400,"Average Distance to Enemy = "+string(global.average_distance)+"px");
	draw_text(x,y+500,"Time Played = "+string(global.time_played)+"s");
}