// Set Image Speed
image_speed = 1;

// Get Input
scr_get_input();

// Sprites
sprite_index = player_idle_direction;

		// Transition Trigger

			// Run State
			if left or right or down or up {
				playerstate = playerstates.run;
			}

			// Attack State
			if basicattack and attacking == false {
				image_index = 0;
				playerstate = playerstates.attack;
			}