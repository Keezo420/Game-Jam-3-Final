function scr_dooropen_sound() {
    audio_play_sound(snd_doorbell1, 1, false);
    is_open = true;
	alarm[0] = 5*room_speed;
	
}
