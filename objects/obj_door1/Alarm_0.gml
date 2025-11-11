//find nearest door relative to the player for the x and y pos
var door = instance_nearest(obj_player.x, obj_player.y, obj_door1);
if is_open && door != noone
	scr_dooropen_animation(door.x,door.y);
	