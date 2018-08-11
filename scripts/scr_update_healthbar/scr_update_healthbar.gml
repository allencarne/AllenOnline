///scr_update_healthbar();

if show_hp<red_hp {
	// Speed that red hp goes down
	red_hp-= max_hp/500;	
}

if hp != show_hp {
	show_hp += (hp - show_hp) //* 0.1;	
}

if show_hp >= red_hp {
	red_hp = show_hp - 1;	
}

if hp > max_hp {
	hp = max_hp;	
}

if hp <= 0 {
	instance_destroy();	
}