/// @description UpdateCamera
//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//move cam
x = x + (xTo - x) / 25;
y = y + (yTo - y) / 25;


////deathcam, zoom
//if(instance_exists(obj_player_dead))
//{
//	follow = obj_player_dead;
//	if camget > zoom_h
//	{
//		inc_h = inc_h - zoom_speed;
//		inc_w = inc_w - zoom_speed
//		camera_set_view_size(cam, inc_w, inc_h)
//		camget = camera_get_view_height(cam)
		
//		dcam_h = camera_get_view_width(cam) / 4
//		dcam_w = camera_get_view_width(cam) / 2
		
//		//updated cam view
//		camera_set_view_pos(cam, x - dcam_w, y - dcam_h);
//		script_execute(scr_death)
//	}
//}

//if(!instance_exists(obj_player_dead) and !instance_exists(obj_wheelui_pausemenu))
//{
//	//clamp cam to room edge
//	x = clamp(x, view_w_half, room_width - view_w_half)
//	y = clamp(y, view_h_half, room_height - view_h_half)
	
	//updated cam view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
//}
//else
//{
//	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
//}