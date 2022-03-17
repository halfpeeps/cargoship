///Interact Menu Check
if(keyboard_check_pressed(ord("E")))
{
	ctrlcheck_interact_menu = bool(1)
}
else
{
	ctrlcheck_interact_menu = bool(0)
}

///Text Test Check
if(keyboard_check_pressed(vk_space))
{
	ctrlcheck_test_text = 1
}
else
{
	ctrlcheck_test_text = 0
}