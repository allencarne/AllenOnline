// Set Image Speed
image_speed = 1;
// Get Input
scr_get_input();

			// Transition Trigger
			
				// Idle State
				if !left and !right and !up and !down {
					playerstate = playerstates.idle;	
				}
			
				// Attack State
				if basicattack and attacking == false {
					image_index = 0;
					playerstate = playerstates.attack;	
				}
				
				// Dash State
				if dash and stamina >= 50 {
					playerstate = playerstates.dash;
					alarm[0] = room_speed / 8;
					stamina -= 50;
				}

// Get The Axis
var xAxis = (right - left);
var yAxis = (down - up);

// Get Direction
dir = point_direction(0,0,xAxis,yAxis);

// Get The Length
if (xAxis == 0 and yAxis = 0) {
	len = 0;	
} else {
	len = movespeed;
}

// Get The Hspd And Vspd
hspd = lengthdir_x(len, dir)
vspd = lengthdir_y(len, dir)

// Move
x += hspd;
y += vspd;

// Sprites

	// If We Are Not Moving, idle
	if len == 0 {
		sprite_index = player_idle_direction;	
	}
	
	// Vertical Sprites
	if vspd > 0 {
		sprite_index = spr_player_run_down;
		player_idle_direction = spr_player_idle_down;
	} else if vspd < 0 {
		sprite_index = spr_player_run_up;
		player_idle_direction = spr_player_idle_up;
	}
	
	// Horizontal Sprites
	if hspd > 0 {
		sprite_index = spr_player_run_right;	
		player_idle_direction = spr_player_idle_right;
	} else if hspd < 0 {
		sprite_index = spr_player_run_left;
		player_idle_direction = spr_player_idle_left;
	}
