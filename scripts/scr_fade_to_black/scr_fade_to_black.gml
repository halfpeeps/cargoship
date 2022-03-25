function scr_fade_to_black(_fade_time, _wait_time)
{
	instance_create_layer(0, 0, "layer_null", obj_transition_fade_to_black)
	obj_transition_fade_to_black.fade_time = _fade_time
	obj_transition_fade_to_black.wait_time = _wait_time
}