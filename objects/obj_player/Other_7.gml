// Change Back To Idle State
if playerstate == playerstates.attack {
	playerstate = playerstates.idle;
	alarm[2] = attackspeed;
}