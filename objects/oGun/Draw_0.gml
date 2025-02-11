draw_self();

just_shot -= 1;
if just_shot > 0 {
	image_index = 1;
	
	draw_sprite(sFlash, 0, x+lengthdir_x(sprite_width/2, image_angle), y+lengthdir_y(sprite_width/2, image_angle));

}
else
image_index = 0;