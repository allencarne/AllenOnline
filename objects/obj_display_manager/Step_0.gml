// Follow Player
view_x = obj_player.x - view_w/2;
view_y = obj_player.y - view_h/2;

//camera can't leave the room
view_x = clamp (view_x,0,room_width-view_w);
view_y = clamp (view_y,0,room_height-view_h);
