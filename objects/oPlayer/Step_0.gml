//inputs
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _jump_pressed = keyboard_check_pressed(vk_space);
var _jump_held = keyboard_check(vk_space);

var _shoot = mouse_check_button_pressed(mb_left);

var _necro = keyboard_check_pressed(ord("E"));

//move about- 

//horizontal
var _hdir = _right-_left;
hsp = approach(hsp, _hdir*move_spd, acc);

//gravity
vsp += grv;

//jump
grounded -= 1;
jump -= 1;

if _jump_pressed
jump = jump_buffer;

if place_meeting(x, y+1, oWall) 
grounded = coyote_buffer;

if jump > 0 and grounded > 0 {
	
	vsp = jump_force;
	jumped = true;
	jump = 0;
	grounded = 0;
	
}

if !_jump_held and jumped
vsp *= var_jump_mod;

if vsp > 0 
jumped = false;

//combat-

aim_dir = point_direction(x, y, mouse_x, mouse_y);

can_shoot -= 1;

if can_shoot < 0 and _shoot {
	
	instance_create_depth(x, y, depth, oBullet);
	can_shoot = fire_rate;
}

//necromancy-

if souls > soul_lvl[0] and _necro {
	instance_create_depth(x, y, depth, oNecrozone);	
}

//collision-
if place_meeting(x+hsp, y, oWall) {
	while !place_meeting(x+sign(hsp), y, oWall) {
		x += sign(hsp);	
	}
	hsp = 0;
}
//apply movement
x += hsp;

if place_meeting(x, y+vsp, oWall) {
	while !place_meeting(x, y+sign(vsp), oWall) {
		y += sign(vsp);	
	}
	vsp = 0;
}
//apply movement
y += vsp;