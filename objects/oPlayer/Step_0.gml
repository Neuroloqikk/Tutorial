if (hascontrol)
{
	//Usar A & D para mexer
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}	

	//Calcular speed
	var move = key_right - key_left;

	hsp = move * walksp;
	vsp = vsp + grv;

	if (place_meeting(x,y+1,oWall)) && (key_jump)
	{
		vsp = -7;
	}

	//Colisões Horizontais
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;	
	}
	x = x + hsp;

	//Colisões Verticais
	if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;	
	}
	y = y + vsp;

	//Animações
	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sPlayerJumping;
		image_speed = 0;
		if (sign(vsp) > 0 )
		{
			sprite_index = sPlayerLanding;
		}
	}
	else
	{
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = sPlayerIdle;
		
		}
		else
		{
			sprite_index = sPlayerRunning;	
		}
	}
	/*
	if (hsp != 0)
	{
		image_xscale = sign(hsp);
	}
	else
	{
		image_xscale = !sign(hsp);	
	}*/
	if (key_left) image_xscale = -1; else
	if (key_right) image_xscale = 1;
