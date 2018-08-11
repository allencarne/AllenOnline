//Set an outline color
var outline_color = c_green;

//Draw the sprite 1 pixel off in each direction
draw_sprite_ext(sprite_index, -1, x - 1, y, 1, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x + 1, y, 1, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y - 1, 1, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y + 1, 1, 1, 0, outline_color, 1);

//Draw the regular sprite at origin
draw_sprite(sprite_index, -1, x, y);