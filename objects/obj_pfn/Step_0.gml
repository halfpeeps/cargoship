if(mec_swoop == false)
{
	if(!mouse_check_button_pressed(mb_left))
	{
		if(instance_exists(obj_player))
		{
			pos_dest = obj_player.x + 5;
			curr_pos = x
			pos_dest_y = obj_player.y - 70
			curr_pos_y = y
			pos_dest_y = (pos_dest_y - frac(pos_dest_y));
		}

		if(curr_pos < pos_dest - 64 or curr_pos > pos_dest + 48)
		{
			if(curr_pos < pos_dest)
			{
				x = x + 3;
			}
			else
			{
				x = x - 3;
			}
		}
		else if(curr_pos < pos_dest - 16 or curr_pos > pos_dest + 16)
		{
			if(curr_pos < pos_dest)
			{
				x = x + 2;
			}
			else
			{
				x = x - 2;
			}
		}

		else
		{
			if(curr_pos != pos_dest)
				{
					if(curr_pos < pos_dest)
					{
						x = x + 1;
					}
					else
					{
						x = x - 1;
					}
				}
		}

		//y

		if(curr_pos_y < pos_dest_y - 64 or curr_pos_y > pos_dest_y + 48)
		{
			if(curr_pos_y < pos_dest_y)
			{
				y = y + 3;
			}
			else
			{
				y = y - 3;
			}
		}
		else if(curr_pos_y < pos_dest_y - 16 or curr_pos_y > pos_dest_y + 16)
		{
			if(curr_pos_y < pos_dest_y)
			{
				y = y + 2;
			}
			else
			{
				y = y - 2;
			}
		}

		else
		{
			if(curr_pos_y != pos_dest_y)
				{
					if(curr_pos_y < pos_dest_y)
					{
						y = y + 1;
					}
					else
					{
						y = y - 1;
					}
				}
		}
	}
}
//Spawn Wheel
if(keyboard_check_pressed(ord("Q")))
{
	instance_create_layer(x, y, "layer_ui", obj_mec_wheel)
}

//Swoop
if(instance_exists(obj_player))
{
	if(mec_selected = 1)
	{
		if(mouse_check_button_pressed(mb_left))
		{
			if((obj_player.x + 5) - 10 < curr_pos < (obj_player.x +5) + 10)
			{
			if(mec_swoop == false)
			{
				mec_swoop = true;
			}
			}
		}
	}

	if(mec_swoop == true)
	{
		if(x < swoop_x + obj_player.x)
		{
			x = x + swoop_speed_x;
		}
		if(y < swoop_y + obj_player.y)
		{
			y = y + swoop_speed_y;
		}
		if(x > (swoop_x + obj_player.x) - 1 and y > (swoop_y + obj_player.y) - 1)
		{
			mec_swoop = false
		}
	}
}