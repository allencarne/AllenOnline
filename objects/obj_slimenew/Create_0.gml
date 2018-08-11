enum states {
	spawn,
	idle,
	wander,
	alert,
	attack,
	damaged,
	death
}

state = states.spawn;

states_array[states.spawn] = scr_slime_spawn;
states_array[states.idle] = scr_slime_idle;
states_array[states.wander] = scr_slime_wander;
states_array[states.alert] = scr_slime_alert;
states_array[states.attack] = scr_slime_attack;
states_array[states.damaged] = scr_slime_damaged;
states_array[states.death] = scr_slime_death;

// When Counter Reaches 3 Enemy Will Wonder Randomly Or Stand Still
counter = 0;

// Damage Variables
hp = 100;
damage = 10;
attacking = false;
dead = false;

// Range Variables
attackrange = 20;
aggrorange = 100;
deaggrorange = 100;

// Moving Variables
enemyspeed = .5;
my_dir = irandom_range(0,359);
moveX = lengthdir_x(enemyspeed, my_dir);
moveY = lengthdir_y(enemyspeed, my_dir);

// Sprite Variables
//image_speed = 1;
sprite_index = spr_slime_spawn;
spritedirection = spr_slime_walking_right;
//selected = false;
deathtime = 0;

//
//lastspriteenemy = sprite_index

hspd = 0;
vspd = 0;