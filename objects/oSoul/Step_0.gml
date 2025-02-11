direction = point_direction(x, y, oPlayer.x, oPlayer.y);
speed += 0.1;
image_angle = direction;

instance_create_depth(x, y, depth, oSoulTrail);