//init code, keep even beween stages (1-8)


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
		stage3 = true
		
		
		
	}
}

if(load_count = 15)
{
	if(stage4 = false)
	{
		///init step 4
		image_index = 4
		stage4 = true
		
		
	}
}

if(load_count = 20)
{
	if(stage5 = false)
	{
		///init step 5
		instance_create_layer(0, 0, "layer_null", null_par_collision)
		image_index = 5
		stage5 = true
		
		
		
	}
}

if(load_count = 25)
{
	if(stage6 = false)
	{
		///init step 6
		instance_create_layer(0, 0, "layer_lighting", obj_lighting_init)
		image_index = 6
		stage6 = true
		
		
	}
}

if(load_count = 30)
{
	if(stage7 = false)
	{
		///init step 7
		image_index = 7
		stage7 = true
		
		
		
	}
}

if(load_count = 35)
{
	if(stage8 = false)
	{
		///init step 8
		instance_create_layer(0, 0, "layer_lighting", obj_light_player)
		image_index = 8
		stage8 = true
		
		
		
	}
}

if(load_count = 40)
{
	image_index = 9
	room_goto(asset_get_index("rm_intro"))
}

load_count = load_count + 1