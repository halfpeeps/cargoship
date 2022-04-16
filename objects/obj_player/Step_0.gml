///movement
curr_x = x
curr_y = y

if(!in_menu)
{

	Key_Left = keyboard_check_direct(ord("A"));
	Key_Right = keyboard_check_direct(ord("D"));
	Key_Up = keyboard_check_direct(ord("W"));
	Key_Down = keyboard_check_direct(ord("S"));
	Key_Sprint = keyboard_check_direct(vk_lshift);
 
	key_hor = Key_Right - Key_Left;
	key_vert = Key_Down - Key_Up;
	key_speed = min(1,abs(key_hor)+abs(key_vert));
	key_dir = point_direction(0,0,key_hor,key_vert);
 
 
	///Collisions and Movement
	///Horizontal (X)
	if place_meeting(x+(sign(key_hor)*8),y,null_data_hold){
 
	    while !place_meeting(x+(sign(key_hor)*4),y,null_data_hold){
	        x += key_hor;
	    }
 
	    if place_meeting(x+(sign(key_hor)*8),y+16,null_data_hold){
	        y = y - 4;
	    }
 
	    if place_meeting(x+(sign(key_hor)*8),y-16,null_data_hold){
	        y = y + 4;
	    }
 
	}
	else
	{
	    x += lengthdir_x(key_speed*playerSpeed,key_dir);
	}
	
	if(place_meeting(x, y, null_interactable))
	{
	x = curr_x
	}
	
	if(place_meeting(x, y, null_par_collision))
	{
	x = curr_x
	}

 
	//Vertical (Y)
	if place_meeting(x,y+(sign(key_vert)*8),null_par_collision){
 
	    while !place_meeting(x,y+(sign(key_vert)*4),null_par_collision){
	        y += key_vert;
	    }
 
	    if place_meeting(x+16,y+(sign(key_vert)*8),null_par_collision){
	        x = x - 4;
	    }
 
	    if place_meeting(x-16,y+(sign(key_vert)*8),null_par_collision){
	        x = x + 4;
	    }
 
	}
	else
	{
	    y += lengthdir_y(key_speed*playerSpeed,key_dir);
	}
 
	if (Key_Sprint){
	    sprinting = true;
	    playerSpeed = 8;
	}
	else{
	    sprinting = false;
	    playerSpeed = 3;
	}
	
	
	if(place_meeting(x, y, null_interactable))
	{
	y = curr_y
	
	}
	
		if(place_meeting(x, y, null_par_collision))
	{
	y = curr_y
	
	}

}



//create larger hitbox
if(!instance_exists(obj_player_hitbox))
{
	instance_create_layer(x, y, "layer_player", obj_player_hitbox)
	show_debug_message("player_hitbox created")
}





//Interact
if(!in_menu)
{
	if(instance_exists(null_input_check))
	{
		if(null_input_check.ctrlcheck_interact = true)
		{
			interact_obj = instance_nearest(x, y, null_interactable)
			if(collision_circle(x, y, 50, interact_obj, false, true))
			{
				interact_obj.interact = true
				
				
			}
		}
	}
}
