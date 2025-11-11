function scr_doorclose_sound(){
	audio_play_sound(snd_doorclose1, 1, false);
    is_open = false;
	scr_doorclose_animation();
}