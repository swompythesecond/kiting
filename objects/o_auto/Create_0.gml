if instance_exists(oplayer.nearest_enemy){
	enemy = oplayer.nearest_enemy;
	enemy.outline_shader = 1;
}
else{
	instance_destroy();
}
oplayer.perfect_kiting_go = 1;

dmg = oplayer.dmg;
