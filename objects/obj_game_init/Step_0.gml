image_index = 0
if(load_count = 0)
{
	if(stage1 = false)
	{
		///init step 1
		instance_create_layer(0, 0, "layer_null", null_input_check)
		image_index = 1
		stage1 = true
		
		
	}
}

if(load_count = 5)
{
	if(stage2 = false)
	{
		///init step 2
		stage2 = true
		image_index = 2
	}
}

if(load_count = 10)
{
	if(stage3 = false)
	{
		///init step 3
		instance_create_layer(0, 0, "layer_null", null_data_hold)
		image_index = 3
	}
}

if(load_count = 15)
{
	///init step 4
	
}

if(load_count = 20)
{
	///init step 5
	instance_create_layer(0, 0, "layer_null", null_par_collision)
	image_index = 5
}

if(load_count = 25)
{
	///init step 6
	instance_create_layer(0, 0, "layer_lighting", obj_lighting_init)
	image_index = 6
}

if(load_count = 30)
{
	///init step 7

}

if(load_count = 35)
{
	///init step 8
	instance_create_layer(0, 0, "layer_lighting", obj_light_player)
	image_index = 8
}

if(load_count = 40)
{
	image_index = 9
	room_goto(asset_get_index("rm_dev1"))
}

load_count = load_count + 1