scr_setup_healthbar(100,50,36,4,)

enum playerstates {
	idle,
	run,
	dash,
	attack
}

playerstate = playerstates.idle;

states_array[playerstates.idle] = scr_player_idle;
states_array[playerstates.run] = scr_player_run;
states_array[playerstates.dash] = scr_player_dash;
states_array[playerstates.attack] = scr_player_attack;

// Movement
movespeed = 2;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;

// Combat
attacking = false;
attackrange = 30;
attackspeed = 15;

// Stats
level = 1;
hp = 100;
maxhp = hp;
	// Stamina
	stamina = 100;
	maxstamina = stamina;
		// Experience
		expr = 0;
		maxexpr = 3;
			// Damage
			damage = 20;
			
// Sprites
player_idle_direction = spr_player_idle_right;

// Regen HP
alarm[1] = room_speed * 20;