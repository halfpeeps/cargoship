function scr_lvl_change(_changeto, _spawn_x, _spawn_y)
{
	room_goto(_changeto)
	obj_player.x = _spawn_x
	obj_player.y = _spawn_y
}