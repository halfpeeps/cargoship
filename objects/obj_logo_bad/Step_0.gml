if(step_count < pre_wait)
{
	
}
else
{
	image_alpha = image_alpha + 0.005
}

step_count = step_count + 1

if(step_count > 1700)
{
	room_goto(rm_dev1)
}