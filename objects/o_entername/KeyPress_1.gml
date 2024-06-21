if string_length(global.name)<12{
	if global.name_set==0{
		global.name="";
		global.name_set=1;
	}
	global.name=global.name+string_letters(keyboard_lastchar);
}