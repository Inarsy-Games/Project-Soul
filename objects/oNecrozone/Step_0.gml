//stick to player
x = oPlayer.x;
y = oPlayer.y;

//make big
image_xscale += 0.1;
image_yscale = image_xscale;

if image_xscale > 1
instance_destroy(id);