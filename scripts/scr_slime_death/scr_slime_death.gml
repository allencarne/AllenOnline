// Death
dead = true;

	if sprite_direction == spr_slime_walking_right {
		sprite_index = spr_slime_death_right;
	} else if sprite_direction == spr_slime_walking_up {
		sprite_index = spr_slime_death_up;
	} else if sprite_direction == spr_slime_walking_left {
		sprite_index = spr_slime_death_left;
	} else if sprite_direction == spr_slime_walking_down {
		sprite_index = spr_slime_death_down;	
}

// If Enemy Is Dead, Destroy Instance And Drop EXP/Items
if dead == true {
	// Instance Destroy
	instance_destroy();
	// Drop EXP
	instance_create_layer(x,y,"lyr_player",obj_exp);
	// Drop Helth Pition
	if scr_loot_drop_chance(.5) {
		instance_create_layer(x + random_range(-4,4), y + irandom_range(-4,4),"lyr_player",obj_health_potion)
	}
}
