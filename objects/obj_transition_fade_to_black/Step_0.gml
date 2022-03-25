x = -2000
y = -2000

if(fade_in = false)
{
	if(image_alpha < 1)
	{
		image_alpha = image_alpha + fade_time
	}
	else
	{
		fade_in = true
	}
}
else
{
	if(waited = false)
	{
		if(wait_count < 1)
		{
			wait_count = wait_count + wait_time
		}
		else
		{
			waited = true
		}
	}
}

if(waited = true)
{
	if(image_alpha > 0)
	{
		image_alpha = image_alpha - fade_time
	}
	else
	{
		instance_destroy(self)
	}
}
show_debug_message("fade_to_black in progress")