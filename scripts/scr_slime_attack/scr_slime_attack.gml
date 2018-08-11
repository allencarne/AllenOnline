// Transition Triggers

	// If HP <= 0 DEATH
	if hp <= 0 {
		state = states.death
	}

// Attack
if distance_to_object(obj_player) <= attackrange + 24 {
	//image_speed = .5;
		if sprite_index = spr_slime_walking_right {
			sprite_index = spr_slime_attack_right;
		}
		if sprite_index = spr_slime_walking_up {
			sprite_index = spr_slime_attack_up;
		}
		if sprite_index = spr_slime_walking_left {
			sprite_index = spr_slime_attack_left;
		}
		if sprite_index = spr_slime_walking_down {
			sprite_index = spr_slime_attack_down;
	}
}

// Get Obj_Player Angle And Attack Accordingly
if instance_exists(obj_player) {
	var enemyhitboxangle = point_direction(x,y,obj_player.x,obj_player.y)
	var lendirX = lengthdir_x(attackrange,enemyhitboxangle)
	var lendirY = lengthdir_y(attackrange,enemyhitboxangle)
}

// Damage
if image_index >= 1 and attacking == false  {
	// Create Obj_Damage
	instance_create_layer(id.x + lendirX,id.y + lendirY,"Damage_Numbers",obj_enemy_damage);
	attacking = true;
}





/*
if (enemyhitboxangle > 135) or (enemyhitboxangle < 225) {
	sprite_index = spr_slime_attack_right;
		//spritedirection = spr_slime_walking_right;
} else if (enemyhitboxangle > 225) and (enemyhitboxangle < 315) {
	sprite_index = spr_slime_attack_up;
		//spritedirection = spr_slime_walking_up;
} else if  (enemyhitboxangle > 315) or (enemyhitboxangle < 45) {
	sprite_index = spr_slime_attack_left;
		//spritedirection = spr_slime_walking_left;
} else if (enemyhitboxangle > 45) and (enemyhitboxangle <= 135) {
	sprite_index = spr_slime_attack_down;
		//spritedirection = spr_slime_walking_down;
}

// Mid Attack Animation/ Deal Damage
if sprite_index = spr_slime_attack_right and image_index = 2 {
	attacking = false
	state = states.alert
		with(obj_player) {
			if timeline_running == false{
					timeline_index = tl_damage_effect;
					timeline_position = 0;
					timeline_running = true;
			}
			var my_damage = instance_create_layer(x,y,"Damage_Numbers",obj_damage_number_enemy);
			hp -= other.damage
			my_damage.damage = other.damage;
		}
}

if sprite_index = spr_slime_attack_up and image_index = 2 {
	attacking = false
	state = states.alert
		with(obj_player) {
			if timeline_running == false{
					timeline_index = tl_damage_effect;
					timeline_position = 0;
					timeline_running = true;
			}
			var my_damage = instance_create_layer(x,y,"Damage_Numbers",obj_damage_number_enemy);
			hp -= other.damage
			my_damage.damage = other.damage;
		}
}

if sprite_index = spr_slime_attack_left and image_index = 2 {
	attacking = false
	state = states.alert
		with(obj_player) {
			if timeline_running == false{
					timeline_index = tl_damage_effect;
					timeline_position = 0;
					timeline_running = true;
			}
			var my_damage = instance_create_layer(x,y,"Damage_Numbers",obj_damage_number_enemy);
			hp -= other.damage
			my_damage.damage = other.damage;
		}
}

if sprite_index = spr_slime_attack_down and image_index = 2 {
	attacking = false
	state = states.alert
		with(obj_player) {
			if timeline_running == false{
					timeline_index = tl_damage_effect;
					timeline_position = 0;
					timeline_running = true;
			}
			var my_damage = instance_create_layer(x,y,"Damage_Numbers",obj_damage_number_enemy);
			hp -= other.damage
			my_damage.damage = other.damage;
		}
}