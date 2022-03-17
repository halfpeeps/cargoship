x = obj_pfn.x;
y = obj_pfn.y;

if(image_xscale != 2)
{
	image_xscale = image_xscale + .2;
	image_yscale = image_yscale + .2;
	
	if(image_alpha != 1)
	{
		image_alpha = image_alpha + 0.1
	}
}

if(keyboard_check_released(ord("Q")) or released == true)
{
	released = true
	
	image_alpha = image_alpha - .02;
	
	if(image_alpha < 0)
	{
		instance_destroy(obj_mec_wheel)
	}
}

//segments

if(!instance_exists(obj_mec_wheel_segment_a))
{
	if(curr_frame == 0)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_a)
	}
}

if(!instance_exists(obj_mec_wheel_segment_b))
{
	if(curr_frame == wheel_speed * 1)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_b)
	}
}

if(!instance_exists(obj_mec_wheel_segment_c))
{
	if(curr_frame == wheel_speed * 2)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_c)
	}
}

if(!instance_exists(obj_mec_wheel_segment_d))
{
	if(curr_frame == wheel_speed * 3)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_d)
	}
}

if(!instance_exists(obj_mec_wheel_segment_e))
{
	if(curr_frame == wheel_speed * 4)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_e)
	}
}

if(!instance_exists(obj_mec_wheel_segment_f))
{
	if(curr_frame == wheel_speed * 5)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_f)
	}
}

if(!instance_exists(obj_mec_wheel_segment_g))
{
	if(curr_frame == wheel_speed * 6)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_g)
	}
}

if(!instance_exists(obj_mec_wheel_segment_h))
{
	if(curr_frame == wheel_speed * 7)
	{
		seg_a = instance_create_layer(x, y, "layer_ui", obj_mec_wheel_segment_h)
	}
}

curr_frame = curr_frame + 1;

image_angle_prev = image_angle

//scroll up
if(mouse_wheel_up())
{
	scroll = 0;
	if(scroll_lvl == 0)
	{
		scroll_lvl = 45;
	}
	else if(scroll_lvl == 45)
	{
		scroll_lvl = 45 * 2;
	}
	else if(scroll_lvl == 45 * 2)
	{
		scroll_lvl = 45 * 3;
	}
	else if(scroll_lvl == 45 * 3)
	{
		scroll_lvl = 45 * 4;
	}
	else if(scroll_lvl == 45 * 4)
	{
		scroll_lvl = 45 * 5;
	}
	else if(scroll_lvl == 45 * 5)
	{
		scroll_lvl = 45 * 6;
	}
	else if(scroll_lvl == 45 * 6)
	{
		scroll_lvl = 45 * 7;
	}
	else if(scroll_lvl == 45 * 7)
	{
		scroll_lvl = 0;
	}
	else
	{
		scroll_lvl = scroll_lvl;
	}

	if(scroll_lvl == 360)
	{
		scroll_lvl = 0
	}
}


//scroll down
if(mouse_wheel_down())
{
	scroll = 1;
	if(scroll_lvl == 360 or scroll_lvl > 360)
	{
		scroll_lvl = 0
	}
	if(scroll_lvl == 45)
	{
		scroll_lvl = 360;
	}
	else if(scroll_lvl == 45 * 2)
	{
		scroll_lvl = 45;
	}
	else if(scroll_lvl == 45 * 3)
	{
		scroll_lvl = 45 * 2;
	}
	else if(scroll_lvl == 45 * 4)
	{
		scroll_lvl = 45 * 3;
	}
	else if(scroll_lvl == 45 * 5)
	{
		scroll_lvl = 45 * 4;
	}
	else if(scroll_lvl == 45 * 6)
	{
		scroll_lvl = 45 * 5;
	}
	else if(scroll_lvl == 45 * 7)
	{
		scroll_lvl = 45 * 6;
	}
	else if(scroll_lvl == 0)
	{
		scroll_lvl = 45 * 7;
	}
	else
	{
		scroll_lvl = scroll_lvl
	}
	if(scroll_lvl == 360)
	{
		scroll_lvl = 0
	}


}



if(image_angle != scroll_lvl)
{
	if(scroll == 0)
	{
		if(image_angle == 315 and scroll_lvl == 0)
		{
			image_angle += 5;
		}
		if(image_angle > 315 and scroll_lvl == 0)
		{
			image_angle += 5;
		}
		if(image_angle < scroll_lvl - 90 or image_angle > scroll_lvl + 90)
		{
			if(image_angle < 316)
			{
				image_angle += 20;
			}
		}
		else if(image_angle < scroll_lvl - 45 and image_angle < scroll_lvl)
		{
			image_angle += 10;
		}
			else if(image_angle < scroll_lvl - 10 and image_angle < scroll_lvl)
		{
			image_angle += 5;
		}
			else
		{
			image_angle += 1;
		}
		if(image_angle == 360 or image_angle > 360)
			{
				image_angle = 0
			}
		if(image_angle == image_angle_prev)
		{
			image_angle = 0
		}

	}
	else
	{
		if(image_angle != scroll_lvl)
		{
			if(image_angle == 45 and scroll_lvl == 0)
			{
				image_angle -= 5;
			}
			if(image_angle < 45 and scroll_lvl == 0)
			{
				image_angle -= 5;
			}
		
			if(image_angle > scroll_lvl + 90 or image_angle < scroll_lvl - 90)
			{


				image_angle -= 20;
				if(image_angle == -20)
				{
					image_angle = 340
				}

			}
			else if(image_angle > scroll_lvl + 45 and image_angle > scroll_lvl)
			{
				image_angle -= 10;
			}
			else if(image_angle > scroll_lvl + 10 and image_angle > scroll_lvl)
			{
				if(image_angle > 44)
				{
				image_angle -= 5;
				}
			}
			else
			{
				image_angle -= 1;
			}
			if(image_angle == 360 or image_angle > 360)
			{
				image_angle = 0
			}
			if(image_angle < 0)
			{
				image_angle = 0
			}
			if(image_angle == image_angle_prev)
			{
				image_angle = 0
			}
		}

	}
}

