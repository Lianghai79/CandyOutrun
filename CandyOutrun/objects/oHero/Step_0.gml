xsp = 0;
ysp += 0.1;

if (cTime > 0)
{
	cTime -= 0.1;
	if keyboard_check(vk_space)
	{
		ysp = -2;
		cTime = 0;
	}
}

if (keyboard_check(vk_left))
{
	xsp=-1;
}

if (keyboard_check(vk_right))
{
	xsp=1;
}

if (place_meeting(x,y+1,oTile))
{
	cTime = 1;
}

move_and_collide(xsp,ysp,oTile);