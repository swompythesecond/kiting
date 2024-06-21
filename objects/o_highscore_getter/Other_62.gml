/// remember to check if the gamemaker http async bug is fixed so you dont need to have the scame for loop 1million times >:(
// You can write your code in this editor
var json = async_load[? "result"];




count = 0;

var my_str = json;
var sub_str ="";

if my_str!="" && is_string(my_str) {		
	if string_char_at(my_str,1) == "1"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev1[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
		global.scores_dodgev1[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";	
		
	}
	
	
	
		if string_char_at(my_str,1) == "2"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev1_daily[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
		global.scores_dodgev1_daily[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
		
		}
		
		
		if string_char_at(my_str,1) == "3"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev1_weekly[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
		global.scores_dodgev1_weekly[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				
		}
		
		
		if string_char_at(my_str,1) == "4"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev2[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
			global.scores_dodgev2[count]=string_replace_all(sub_str, chr(34), "");
		    sub_str = "";
		}
		
		
				if string_char_at(my_str,1) == "5"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev2_daily[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
		global.scores_dodgev2_daily[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
			
		}
		
		
				if string_char_at(my_str,1) == "6"{
	
		for(var i = 1; i < string_length(my_str)+1; i++)
		{
		    var next_char = string_char_at(my_str,i);
		    if next_char != ","
		    {
		        sub_str = sub_str + next_char;
		    }
		    else
		    {	
		
		        global.scores_dodgev2_weekly[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				count++;
		    }
		}
		global.scores_dodgev2_weekly[count]=string_replace_all(sub_str, chr(34), "");
		        sub_str = "";
				
		}
global.loading = 0;
loading = 0;
}
