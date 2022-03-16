function scr_ui_vo_box(_text)
{
	if(!instance_exists(obj_ui_vo_box))
	{
		instance_create_layer(640, 550, "layer_ui", obj_ui_vo_box)
		null_data_hold.obj_ui_vo_box_text = _text
	}
}