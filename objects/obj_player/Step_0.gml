// Update Healthbar
scr_update_healthbar();

// State Machine
script_execute(states_array[playerstate]);

// Health Regen
//if playerstate != playerstates.attack {
//	if hp < maxhp and alarm[1] == -1 {
	//	hp += 1;
//	}
//}

// Stamina Regen
if stamina < maxstamina {
	stamina	+= .25;
}

// Restart Game If HP <= 0
if hp <= 0 {
	game_restart();	
}
