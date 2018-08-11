with (other) {
	instance_destroy();	
}

// If We Level Up
expr += 1;
if expr >= maxexpr {
	level += 1;	
	expr = expr - maxexpr;
	maxexpr *= 2;
	hp += 2;
	maxhp += 2;
	stamina +=2;
	maxstamina +=2;
	damage += 5;
		// If We Are Below Max HP, Set HP to MaxHP
		if hp <= maxhp {
			hp = maxhp	
	}
}