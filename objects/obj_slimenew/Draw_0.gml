draw_self();
draw_healthbar(x-15,y-32,x+15,y-29,hp,c_black,c_red,c_red,0,true,true);

/*/ If Select Is True, Draw Border
if obj_player.selected = id {
	script_execute(scr_highlight_selected_enemy) 
}