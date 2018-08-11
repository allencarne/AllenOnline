// Slimes Spawn In A Random Posision
randomize();

// If Slime Doesn't Exists Create One
if (!instance_exists(obj_slimenew)) {
		instance_create_layer (irandom_range(bbox_left, bbox_right),irandom_range(bbox_top, bbox_bottom), "lyr_player",obj_slimenew)
}