// Set Image Speed
image_speed = 1.5;

// Get Input
scr_get_input();

// Attack Direction Based On Mouse Direction
if instance_exists(obj_player) {
	var attackangle = point_direction(mouse_x,mouse_y,obj_player.x,obj_player.y);
	var dis = .2;
}

// Attack While Moving
if instance_exists(obj_player) {
	if left or up or right or down {
			if (attackangle > 135) or (attackangle < 225) {
				sprite_index = spr_player_punch_right;
				player_idle_direction = spr_player_idle_right;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if (attackangle > 225) and (attackangle < 315) {
				sprite_index = spr_player_punch_up;
				player_idle_direction = spr_player_idle_up;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if  (attackangle > 315) or (attackangle < 45) {
				sprite_index = spr_player_punch_left;
				player_idle_direction = spr_player_idle_left;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if (attackangle > 45) and (attackangle <= 135) {
				sprite_index = spr_player_punch_down;
				player_idle_direction = spr_player_idle_down;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			}
	}
}

// Attack Without Moving But Our Cursor Is Further Than Attack Range
if instance_exists(obj_player) {
		if distance_to_point(mouse_x,mouse_y) >= attackrange {
		if (attackangle > 135) or (attackangle < 225) {
				sprite_index = spr_player_punch_right;
				player_idle_direction = spr_player_idle_right;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if (attackangle > 225) and (attackangle < 315) {
				sprite_index = spr_player_punch_up;
				player_idle_direction = spr_player_idle_up;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if  (attackangle > 315) or (attackangle < 45) {
				sprite_index = spr_player_punch_left;
				player_idle_direction = spr_player_idle_left;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
			} else if (attackangle > 45) and (attackangle <= 135) {
				sprite_index = spr_player_punch_down;
				player_idle_direction = spr_player_idle_down;
					x -= lengthdir_x(dis,attackangle)
					y -= lengthdir_y(dis,attackangle)
		}
	}
}

// Attack Without Moving
if instance_exists(obj_player) {
	if (attackangle > 45) and (attackangle <= 135) {
		sprite_index = spr_player_punch_down;
		player_idle_direction = spr_player_idle_down;
	} else if (attackangle > 135) and (attackangle < 225) {
		sprite_index = spr_player_punch_right;
		player_idle_direction = spr_player_idle_right;
	} else if (attackangle > 225) and (attackangle < 315) {
		sprite_index = spr_player_punch_up;
		player_idle_direction = spr_player_idle_up;
	} else if (attackangle > 315) or (attackangle < 45) {
		sprite_index = spr_player_punch_left;
		player_idle_direction = spr_player_idle_left;
	}
}
// Object Damage Will Face Our Mouse Direction
if instance_exists(obj_player) {
	var hitboxangle = point_direction(x,y,mouse_x,mouse_y)
	var lendirX = lengthdir_x(15,hitboxangle)
	var lendirY = lengthdir_y(15,hitboxangle)
}
// Damage
if instance_exists(obj_player) {
	if image_index >= 1 and attacking == false {
		// Create Obj_Damage
		instance_create_layer(obj_player.x + lendirX,obj_player.y + lendirY,"Damage_Numbers",obj_damage);
		attacking = true;
	}
}