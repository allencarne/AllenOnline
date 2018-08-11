// If HP <= 0 DEATH
if hp <= 0 {
	state = states.death
}

// Behaviour
mp_potential_step (obj_player.x,obj_player.y,enemyspeed,false)

// Transition Triggers
if (!collision_circle (x,y,aggrorange,obj_player,false,false)) {
	state = states.idle;
}
if (collision_circle (x,y,attackrange,obj_player,false,false)) {
	if alarm[0] == -1 {
		image_index = 0;
		state = states.attack;
	}
}

// Sprites
if (direction > 135) and (direction < 225) {
	image_speed = 1;
	sprite_index = spr_slime_walking_left
	spritedirection = spr_slime_walking_left;
}

if (direction > 225) and (direction < 315) {
	image_speed = 1;
	sprite_index = spr_slime_walking_down
	spritedirection = spr_slime_walking_down;
}

if (direction > 315) or (direction < 45) { 
	image_speed = 1;
	sprite_index = spr_slime_walking_right
	spritedirection = spr_slime_walking_right;
}

if (direction > 45) and (direction <= 135) {
	image_speed = 1;
	sprite_index = spr_slime_walking_up
	spritedirection = spr_slime_walking_up;
}