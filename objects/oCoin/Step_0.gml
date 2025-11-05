// Checks if Player collects coin
if place_meeting(x,y+1, oPlayer)
{
	oPlayer.collectibles_collected+= 1;	
	show_debug_message("Player collected a coin!");
	oPlayer.coins_value+=oCoin.value;
	instance_destroy(self)
	show_debug_message("Player's total coin value: {0}" , oPlayer.coins_value);

}