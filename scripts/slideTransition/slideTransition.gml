/// @desc SlideTransition(mode, targetRoom);
/// @arg Mode sets transition mode between next,rr and goto.
/// @arg Target sets target room when using goto mode.

with (oTransition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
