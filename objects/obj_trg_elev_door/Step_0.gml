if(place_meeting(x, y, obj_player))
{
	//show_debug_message("elev trigger")
	elev_door_trigger = true
	//left door
	if(instance_exists(obj_elev_door_left))
	{
		//while door is not completely open
		if(curr_location_left != 32)
		{
			//check to see if door is hor or vert
			if(obj_elev_door_left.door_vert = false)
			{
				obj_elev_door_left.x -= 1
			}
			else
			{
				obj_elev_door_left.y -= 1
			}
			curr_location_left += 1
		}
	}
	
	//right door
	if(instance_exists(obj_elev_door_left))
	{
		//while door is not completely open
		if(curr_location_right != 32)
		{
			//check to see if door is hor or vert
			if(obj_elev_door_right.door_vert = false)
			{
				obj_elev_door_right.x += 1
			}
			else
			{
				obj_elev_door_right.y += 1
			}
			curr_location_right += 1
		}
	}
}
else
{
	if(instance_exists(obj_elev_door_left))
	{
		//while door is not completely closed
		if(curr_location_left != 0)
		{
			//check to see if door is hor or vert
			if(obj_elev_door_left.door_vert = false)
			{
				obj_elev_door_left.x += 1
			}
			else
			{
				obj_elev_door_left.y += 1
			}
			curr_location_left -= 1
		}
	}
	
	if(instance_exists(obj_elev_door_right))
	{
		//while door is not completely closed
		if(curr_location_right != 0)
		{
			//check to see if door is hor or vert
			if(obj_elev_door_right.door_vert = false)
			{
				obj_elev_door_right.x -= 1
			}
			else
			{
				obj_elev_door_right.y -= 1
			}
			curr_location_right -= 1
		}
	}
	elev_door_trigger = false
}