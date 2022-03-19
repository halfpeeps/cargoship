///spawn vo box and parse text to null data hold
function scr_ui_vo_box(_text)
{
	if(!instance_exists(obj_ui_vo_box))
	{
		instance_create_layer(obj_camera.x + (obj_camera.x / 2), obj_camera.y - (obj_camera.y * 1.6), "layer_ui", obj_ui_vo_box)
		null_data_hold.obj_ui_vo_box_text = _text
	}
}