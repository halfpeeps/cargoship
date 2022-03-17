x = obj_pfn.x;
y = obj_pfn.y;
//icon.x = x + icon_x;
//icon.y = y + icon_y;
//icon.image_angle = image_angle;
if(instance_exists(obj_mec_wheel))
{
	image_angle = obj_mec_wheel.image_angle;
}

if(created == false)
{


	if(image_xscale < 1.5)
	{
		image_xscale = image_xscale + .1;
		image_yscale = image_yscale + .1;
	
		if(image_alpha < .8)
		{
			image_alpha = image_alpha + 0.1
		}
	}
	if(image_xscale == 1.5)
	{
		created = true;
	}
}
if(!instance_exists(obj_mec_wheel))
{
		released = true
	
		image_alpha = image_alpha - .02;
	
		if(image_alpha < 0.2)
		{
			instance_destroy(icon)
			instance_destroy(curr_obj)
		}
	}
	if(instance_exists(curr_obj))
	{
	if(curr_obj.image_angle > selected_angle - 10 and curr_obj.image_angle < selected_angle + 10)
	{
		selected = true;
	}
	else
	{
		selected = false;
	}
}
curr_frame = curr_frame + 1
//is_selected
if(curr_frame > 2)
{
	if(selected == true)
	{
		if(image_xscale < 2)
		{
			image_xscale += 0.2;
			image_yscale += 0.2;
			image_alpha = image_alpha + 0.2;
		}
	}
	if(selected == false)
	{
		if(image_xscale > 1.5)
		{
			image_xscale -= 0.2
			image_yscale -= 0.2
			image_alpha -= 0.2
		}
	}

}
//show_debug_message(image_alpha)
if(selected == true)
{
	obj_pfn.mec_selected = mac_selection;
}

