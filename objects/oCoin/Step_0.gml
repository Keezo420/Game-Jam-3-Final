 // Checks if Player collides with coin, 
 // this will be collected by the player and the coin instance will be destroyed.
if place_meeting(x,y+1, obj_player)
{
	obj_player.collectibles_collected+= 1;	
	show_debug_message("Player collected a coin!");
	obj_player.coins_value+=value;
	instance_destroy(self)
	show_debug_message("Player's total coin value: {0}" , obj_player.coins_value);

}