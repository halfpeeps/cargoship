/// @description Setup Camera
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
view_w = camera_get_view_width(cam)
view_h = camera_get_view_height(cam)
xTo = xstart;
yTo = ystart;

///init
if (instance_exists(follow))
{
	x = follow.x;
	y = follow.y;
}

x = clamp(x, view_w_half, room_width - (view_w_half))
y = clamp(y, view_h_half, room_height - (view_h_half))

if(view_w > room_width)
{
	x = room_width / 2
}

if(view_h > room_height)
{
	y = room_height / 2
}

//death
zoom_amount = 4
zoom_speed = 1

zoom_h = camera_get_view_height(cam) / zoom_amount
inc_w = camera_get_view_width(cam)
inc_h = camera_get_view_height(cam)
camget = camera_get_view_height(cam)