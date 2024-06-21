if global.kiting == 0 {

draw_set_font(BebasNeue);
draw_set_color(c_white);
draw_set_halign(fa_left);
if scores != 0 && global.mode== 4{
	if array_length_1d(scores)>=1+1+global.score_factor{
		draw_text(x,y-20,string(1+global.score_factor)+".  "+scores[1+global.score_factor]);
	}
	if array_length_1d(scores)>=1+2+global.score_factor{
		draw_text(x,y+40,string(2+global.score_factor)+".  "+scores[2+global.score_factor]);
	}
	if array_length_1d(scores)>=1+3+global.score_factor{
		draw_text(x,y+100,string(3+global.score_factor)+".  "+scores[3+global.score_factor]);
	}
	if array_length_1d(scores)>=1+4+global.score_factor{
		draw_text(x,y+160,string(4+global.score_factor)+".  "+scores[4+global.score_factor]);
	}
	if array_length_1d(scores)>=1+5+global.score_factor{
		draw_text(x,y+220,string(5+global.score_factor)+".  "+scores[5+global.score_factor]);
	}
	if array_length_1d(scores)>=1+6+global.score_factor{
		draw_text(x,y+280,string(6+global.score_factor)+".  "+scores[6+global.score_factor]);
	}
	if array_length_1d(scores)>=1+7+global.score_factor{
		draw_text(x,y+340,string(7+global.score_factor)+".  "+scores[7+global.score_factor]);
	}
	if array_length_1d(scores)>=1+8+global.score_factor{
		draw_text(x,y+400,string(8+global.score_factor)+".  "+scores[8+global.score_factor]);
	}
	if array_length_1d(scores)>=1+9+global.score_factor{
		draw_text(x,y+460,string(9+global.score_factor)+".  "+scores[9+global.score_factor]);
	}
	if array_length_1d(scores)>=1+10+global.score_factor{
		draw_text(x,y+520,string(10+global.score_factor)+".  "+scores[10+global.score_factor]);
	}


}
else{
	if global.mode == 4 || global.loading == 1{
	draw_text(x,y-20,"Loading...")
	}
	else{
	draw_text(x,y-20,"Online Score only in ranked mode !")
	}
		
}

}