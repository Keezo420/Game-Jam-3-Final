/// @function scr_dmgplayer(amount)
/// @param The amount of damage to deal
function scr_damage_player(argument0){
  if (instance_exists(obj_player)) {
        with (obj_player) {
            // Only take damage if not invincible
            if (invincible_timer <= 0) {
                player_health -= argument0;

                // Flash red
                damage_flash_time = damage_flash_duration;

                // Set invincibility frames
                invincible_timer = 30; // half a second if 60fps

                // Optional knockback or sound
                // audio_play_sound(snd_hit, 1, false);
            }
        }
    }
}