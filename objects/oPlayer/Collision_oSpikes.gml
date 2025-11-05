if place_meeting(x, y + 1, oSpikes)
{
	my_ySpeed= -6; //whatever is fall speed
	player_health -=25;
}
 //bounce speed
show_debug_message("Player's total health: {0}" , oPlayer.player_health);
