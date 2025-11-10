// --- COLLISION CHECKS ---
if place_meeting(x, y + 1, oSpikes)
{
	vsp=-12; // bounces player up to give time to move out the way
	player_health -=25;
}
 //bounce speed
show_debug_message("Player's total health: {0}" , oPlayer.player_health);
