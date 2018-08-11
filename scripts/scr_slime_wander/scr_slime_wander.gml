// If HP <= 0 DEATH
if hp <= 0 {
	state = states.death
}

// Counter will increment every step
counter += 1;

x += moveX;
y += moveY;

// If We are Too Far From Spawn = States.Wander
if distance_to_object(obj_spawner_slime) >= deaggrorange {
		mp_potential_step(obj_spawner_slime.x,obj_spawner_slime.y,enemyspeed,true)
}

// If Counter Is 3 Or Over "Change" will be 0 or 1
if (counter >= room_speed * 3) {
	var change = choose (0,1);
	switch(change) {
		case 0: state = states.idle;
		case 1:
			my_dir = irandom_range (0,359);
			moveX = lengthdir_x (enemyspeed, my_dir);
			moveY = lengthdir_y (enemyspeed, my_dir);
			counter = 0;
	}
}
if (collision_circle(x,y,aggrorange,obj_player,false,false)) {
	state = states.alert;
}

// Sprites
if (my_dir > 135) and (my_dir < 225) {
	image_speed = 1;
	sprite_index = spr_slime_walking_left
	spritedirection = spr_slime_walking_left;
}

if (my_dir > 225) and (my_dir < 315) {
	image_speed = 1;
	sprite_index = spr_slime_walking_down
	spritedirection = spr_slime_walking_down;
}

if (my_dir > 315) or (my_dir < 45) { 
	image_speed = 1;
	sprite_index = spr_slime_walking_right
	spritedirection = spr_slime_walking_right;
}

if (my_dir > 45) and (my_dir <= 135) {
	image_speed = 1;
	sprite_index = spr_slime_walking_up
	spritedirection = spr_slime_walking_up;
}