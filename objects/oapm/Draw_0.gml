tick = (global.tick/60)/60;
apm =global.apm;
draw_set_halign(fa_center);
draw_set_font(BebasNeue);
draw_set_color(c_white);
draw_text(x, y,round((apm/tick)));