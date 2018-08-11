// If HP <= 0 DEATH
if hp <= 0 {
	state = states.death
}

// If We Are In Any Other State, State Damage Can Still Happen/ Interrupt Theory 
if state = states.idle or state = states.wander or state = states.alert or state = states.attack {
	state = states.damaged;	
}

// Hit Animation Based On Enemy Attack
if obj_player.sprite_index = spr_player_punch_right {
	sprite_index = spr_slime_hit_left;
	sprite_direction = spr_slime_walking_left;
} else if obj_player.sprite_index = spr_player_punch_up {
	sprite_index = spr_slime_hit_down;
	sprite_direction = spr_slime_walking_down;
} else if obj_player.sprite_index = spr_player_punch_left {
	sprite_index = spr_slime_hit_right;
	sprite_direction = spr_slime_walking_right;
} else if obj_player.sprite_index = spr_player_punch_down {
	sprite_index = spr_slime_hit_up;
	sprite_direction = spr_slime_walking_up;
}
