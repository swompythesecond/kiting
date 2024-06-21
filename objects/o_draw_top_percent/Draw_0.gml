draw_set_font(BebasNeue);
draw_set_color(c_white);
draw_set_halign(fa_center);
if o_draw_online_score.scores!=0{
	if array_length_1d(o_draw_online_score.scores) > 0{
	topscore = real(string_digits(o_draw_online_score.scores[1]));
	v_x = (global.points/topscore);
	yp = -0.083333-(-0.025*power(v_x,2)-0.0833333*power(v_x-1,12)+0.05*v_x);
	position = 100-(abs(yp)/(0.11)*100);
	draw_text(x,y,string(position)+"%");
	}
}
