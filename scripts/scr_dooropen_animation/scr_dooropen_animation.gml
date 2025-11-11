function scr_dooropen_animation(xpos, ypos){
    image_index = 0;   // Restart from the first frame
    image_speed = 1;   // Resume playback
    animation_playing = true;
	// Time to spawn and trigger the NPC event
	
	// Get X and Y coords from the function parameters,
	// use targetdoor's X/Y position to determine where this npc should appear
	// i.e. in front of the door
    instance_create_layer(xpos, ypos, "NPCs", obj_homeowner_npc);
}