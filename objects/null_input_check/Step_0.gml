//Interaction key check
if(keyboard_check(ord("E")))
{
	if(holdcount_interact == 0)
	{
		ctrlcheck_interact = true
	}
	holdcount_interact = holdcount_interact + 1
}
if(!keyboard_check(ord("E")))
{
	ctrlcheck_interact = false
	holdcount_interact = 0
}
