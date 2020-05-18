vsp = vsp + grv;

//Colisões Horizontais
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;	
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
	sprite_index = sPlayerJumpingEnemy;
	image_speed = 0;
	if (sign(vsp) > 0 )
	{
		sprite_index = sPlayerLandingEnemy;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayerIdleEnemy;
		
	}
	else
	{
		sprite_index = sPlayerRunningEnemy;	
	}
}

if (hsp != 0)
{
	image_xscale = sign(hsp);
}
else
{
	image_xscale = !sign(hsp);	
}
