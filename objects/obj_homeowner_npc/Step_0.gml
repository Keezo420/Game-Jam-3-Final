// Fade in smoothly
if (!fade_done) {
    image_alpha += fade_speed;
    if (image_alpha >= 1) {
        image_alpha = 1;
        fade_done = true;
    }
}

// Start dialogue after fade completes
if (fade_done && !dialogue_started) {
    scr_guising_dialogue();
    dialogue_started = true;
}