if instance_exists(o_draw_online_score){
	o_highscore_getter.send_data = 1;
}
global.name_set = 1;
instance_destroy(o_entername);
instance_destroy();

