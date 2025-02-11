direction = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
dmg = oPlayer.dmg;
speed = oPlayer.shot_spd;
image_angle = direction;

instance_create_depth(x, y, depth-1, oShell);

