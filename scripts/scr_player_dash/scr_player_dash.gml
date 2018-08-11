// Set Image Speed
image_speed = 1;

// Length
len = movespeed * 4

// Get The Hspd And Vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir)

// Move
x += hspd;
y += vspd;

// Create Dash Effect
var dashh = instance_create_layer(x,y,"Shadows",obj_dash_effect);
dashh.sprite_index = sprite_index;
dashh.image_index = image_index;