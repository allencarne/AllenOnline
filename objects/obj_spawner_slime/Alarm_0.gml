// If 10 Slimes Exists Exit Alarm
if instance_number(obj_slimenew) >= 10 {
	alarm[0] = room_speed * 3;
	exit;
}

// If Less Than 10 Slimes Exist Create Ones And Reset Alarm
if instance_number(obj_slimenew) < 10 {
	instance_create_layer (irandom_range(bbox_left, bbox_right),irandom_range(bbox_top, bbox_bottom), "lyr_player",obj_slimenew)
	alarm[0] = room_speed * 3;
}