function scr_guising_dialogue(){
    // Pick random lines for each character
    var npc_line = choose("Hey there, traveler.", "It's been a long time since anyone came this way.", "Watch your step out here.");
    var player_line = choose("Who are you?", "I'm just passing through.", "Do you live out here?");

    // Display dialogue (temporary example)
    show_debug_message("NPC: " + npc_line);
    show_debug_message("Player: " + player_line);

    // (Later you can replace this with your dialogue box system)
}