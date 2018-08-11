///scr_draw_healthbar(x,y);
//depth = -100
var xx = argument[0];
var yy = argument[1];

// Background
draw_sprite(spr_healthbar_background,0,xx,yy);
// Red Bar
draw_healthbar(xx - (bar_width / 2) + 4,yy - (bar_height / 2),xx + (bar_width / 2) + 3,yy + (bar_height / 2) - 2,100 * (red_hp / max_hp),c_black,c_red,c_red,0,false,false);
// Green Bar
draw_healthbar(xx - (bar_width / 2) + 4,yy - (bar_height / 2),xx + (bar_width / 2) + 3,yy + (bar_height / 2) - 2,100 * (show_hp / max_hp),c_black,c_olive,c_lime,0,false,false);
//draw_sprite_part(spr_healthbar_health,0,0,0,ceil(bar_width * (show_hp / max_hp)),bar_height,xx - (bar_width / 2) + 4,yy - (bar_height / 2) - 1);

// Stamina Bar
draw_healthbar(xx - (bar_width / 2) + 4,yy - (bar_height / 2) + 4,xx + (bar_width / 2) + 3,yy + (bar_height / 2) + 1,100 * (stamina / maxstamina),c_black,c_orange,c_orange,0,false,false);

// Border
draw_sprite(spr_healthbar_border,0,xx,yy);

var sec_number = max_hp / section_size;
var sec_dis = bar_width / sec_number;

//for (i = 0; i <= sec_number; i ++) {
	//if i != 0 {
		//draw_set_color(c_black);
		//draw_line((xx - (bar_width / 2)) + (i * sec_dis), yy -(bar_height / 2),(xx - (bar_width / 2)) + (i * sec_dis),yy + (bar_height/2)-1);
	//}
//}
	
// Show Current Level
draw_text_transformed(xx - bar_width + 17, yy - bar_height + 1,string(level),.3,.3,0)