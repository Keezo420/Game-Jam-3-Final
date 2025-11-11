if (animation_playing) {
    // Forward playback (opening)
    if (image_speed > 0 && image_index >= image_number - 1) {
        image_index = image_number - 1; // stay on last frame
        image_speed = 0;
        animation_playing = false;
    }
    // Reverse playback (closing)
    else if (image_speed < 0 && image_index <= 0) {
        image_index = 0; // stay on first frame
        image_speed = 0;
        animation_playing = false;
    }
}



