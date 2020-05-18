/// @description Insert description here
// You can write your code in this editor


//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update obj position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);


//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
//Update cam view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Trees1BG"))
{
	layer_x("Trees1BG",x/2);
}
if (layer_exists("Trees2BG"))
{
	layer_x("Trees2BG",x/4);
}
if (layer_exists("Trees3BG"))
{
	layer_x("Trees3BG",x/6);
}
if (layer_exists("Trees4BG"))
{
	layer_x("Trees4BG",x/8);
}