//determine target pos
target[0] = oPlayer.x+lengthdir_x(16, oPlayer.aim_dir);
target[1] = oPlayer.y+lengthdir_y(16, oPlayer.aim_dir);

direction = point_direction(x, y, target[0], target[1]);

if distance_to_point(target[0], target[1]) > 2
speed = approach(speed, 3, 0.2);
else
speed = approach(speed, 0, 0.3);

//point at mouse
var _tar = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);;
var _diff = angle_difference(_tar, image_angle);
var _change = clamp(_diff, -turn_spd, turn_spd);
image_angle += _change;

//flip
image_yscale = -sign(oPlayer.x-mouse_x);