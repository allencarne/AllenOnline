// Draw Damage
x = obj_player.x;
y = obj_player.y - obj_player.sprite_height - 20 - y_offset;
y_offset += 1;
alpha += 0.05;

draw_set_halign(fa_center);
draw_text_color(x,y,string(damage),c_blue,c_blue,c_blue,c_blue,1-alpha);

if (alpha >= 1) {
	instance_destroy();
}