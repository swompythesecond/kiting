	global.q_cd_reset = 1;
	global.combo +=1;
	global.combotik = 100;
	
instance_create_depth(x,y,3,o_money_coin);

if o_ez_on_champ = 1{
instance_create_depth(x,y-40,3,o_money_coin10);
global.points+=10;
}
	


instance_destroy();
instance_destroy(oezq);