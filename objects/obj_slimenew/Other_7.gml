// If Enemy Is Attacking OR Damaged And Animation Ends, States.Idle
if state == states.attack or state == states.damaged {
	state = states.idle;
	alarm[0] = room_speed * .5;
}

