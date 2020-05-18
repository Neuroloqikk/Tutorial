/// @description Move to next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		slideTransition(TRANS_MODE.GOTO,other.target);
	}
}