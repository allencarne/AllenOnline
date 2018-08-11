/*/ With Enemy
if instance_exists(other) {
	with (other) {
		// Damaged Animation
		image_index = 0;
		state = states.damaged;
			// Flash Red
			if timeline_running == false {
				timeline_index = tl_damage_effect;
				timeline_position = 0;
				timeline_running = true;
					// Damage Number
					var my_damage = instance_create_layer(x,y,"Damage_Numbers",obj_damage_number_player);
					// Enemy.hp -= Our Players Damage
					hp -= obj_player.damage
					// Damage Text's Variable "Damage" = Our Players Damage
					my_damage.damage = obj_player.damage;
		}
	}
}