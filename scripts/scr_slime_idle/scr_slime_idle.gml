// If HP <= 0 DEATH
if hp <= 0 {
	state = states.death
}

// Counter will increment every step
counter += 1;
// If We are Too Far From Spawn = States.Wander
if distance_to_object(obj_spawner_slime) >= deaggrorange {
		state = states.wander;
}

// If Counter Is 3 Or Over "Change" will be 0 or 1
if (counter >= room_speed * 3) {
	var change = choose(0,1);
	switch (change) {
		case 0: state = states.wander;
		case 1: counter = 0; break;
	}
}
// Detection Radius
if (collision_circle(x,y,aggrorange,obj_player,false,false)) {
	state = states.alert;
}

// Sprite
sprite_index = spritedirection;
image_speed = 0;
image_index = 0;
