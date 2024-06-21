
if global.points > 500 && rank1 = 0{
	rank1 = 1;
}
if rank1 = 1{
instance_create_depth(500,50,1,osilver);
rank1 = 2;
}

if global.points > 1000 && rank2 = 0{
	rank2 = 1;
}
if rank2 = 1{
instance_create_depth(500,50,1,ogold);
rank2 = 2;
}

if global.points > 1500 && rank3 = 0{
	rank3 = 1;
}
if rank3 = 1{
instance_create_depth(500,50,1,oplatin);
rank3 = 2;
}

if global.points > 3000 && rank4 = 0{
	rank4 = 1;
}
if rank4 = 1{
instance_create_depth(500,50,1,oplatin);
rank4 = 2;
}

if global.points > 5000 && rank5 = 0{
	rank5 = 1;
}
if rank5 = 1{
instance_create_depth(500,50,1,omaster);
rank5 = 2;
}

if global.points > 8000 && rank6 = 0{
	rank6 = 1;
}
if rank6 = 1{
instance_create_depth(500,50,1,ochallanger);
rank6 = 2;
}