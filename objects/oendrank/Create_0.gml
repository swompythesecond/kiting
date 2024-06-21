if global.points < 500
{
	instance_create_depth(x,y,1,oirone)
}

if (global.points >=500) && (global.points < 1000)
{
	instance_create_depth(x,y,1,osilvere)
}

if (global.points >=1000) && (global.points < 1500)
{
	instance_create_depth(x,y,1,ogolde)
}

if (global.points >=1500) && (global.points < 3000)
{
	instance_create_depth(x,y,1,oplatine)
}

if (global.points >=3000) && (global.points < 5000)
{
	instance_create_depth(x,y,1,odiamonde)
	
}

if (global.points >=5000) && (global.points < 8000)
{
	instance_create_depth(x,y,1,omastere)
}


if (global.points >=8000)
{
	instance_create_depth(x,y,1,ochallangere)
}