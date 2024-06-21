
draw_set_font(BebasNeue);
draw_set_halign(fa_center);
draw_set_color(c_white);
if kiting == 0{
	draw_text_transformed(browser_width*0.5, browser_height*0.05, (score_points),browser_width/1920,browser_width/1920,0);
}
else{
	draw_text_transformed(browser_width*0.5, browser_height*0.05, (perfect_kiting_auto),browser_width/1920,browser_width/1920,0);
	draw_text_transformed(browser_width*0.5, browser_height*0.1, (autos),browser_width/1920,browser_width/1920,0);
}
var1 = browser_width/browser_height;
var2 = var0/var1;


if show_gui == 1 {


draw_sprite_stretched(s_f_gui,1,browser_width*0.5,browser_height*0.9,browser_width/var0,browser_height/var2);
draw_sprite_stretched(s_empty_box_gui,1,browser_width*0.5,browser_height*0.9,browser_width/var0,(browser_height/var2)*(flash_cd/600));

}


