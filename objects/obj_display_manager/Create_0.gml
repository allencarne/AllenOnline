// Display Properties
ideal_width = 0;
ideal_height = 360;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height*aspect_ratio);
//Ideal_height=round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if (display_get_width() mod ideal_width !=0)
{
	var d = round(display_get_width () /ideal_width);
	ideal_width = display_get_width() /d;
}
if (display_get_height() mod ideal_height != 0)
{
	var d = round(display_get_height() /ideal_height);
	ideal_height = display_get_height() /d;
}

//Check for odd numbers
if (ideal_width & 1)
	ideal_width ++;
if (ideal_height & 1)
	ideal_height ++;

surface_resize (application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);

alarm[0] = 1;

camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;

room_goto_next();