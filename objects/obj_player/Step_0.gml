#region Player Movement (L/R)
/// --- INPUT ---
var move_input = 0;
if (keyboard_check(ord("D"))) 
{ 
	move_input = 1;
	image_xscale = 1;
}
if (keyboard_check(ord("A"))) 
{
	move_input = -1;
	image_xscale = -1;
}

// Handles direction sprite should face
if (move_input != 0) facing = move_input;

#endregion

#region Collision & Movement

/// --- CHECK GROUND ---
// Check one pixel below player for ground
if (place_meeting(x, y + 1, obj_ground)) {
    grounded = true;
} else {
    grounded = false;
}

/// --- HORIZONTAL MOVEMENT ---
hsp = move_input * move_speed;

// Horizontal collision step movement (1 pixel increments)
if (hsp != 0) {
    var step = sign(hsp);
    for (var i = 0; i < abs(hsp); i++) {
        if (!place_meeting(x + step, y, obj_ground)) {
            x += step;
        } else {
            break;
        }
    }
}

/// --- JUMPING ---
if (keyboard_check(vk_space) && grounded) {
    vsp = -jump_speed;
    grounded = false;
}

/// --- APPLY GRAVITY ---
if (!grounded) {
    vsp += grav_force;
    if (vsp > max_fall_speed) vsp = max_fall_speed;
} else {
    vsp = 0;
}

/// --- VERTICAL MOVEMENT (stepwise) ---
var remaining_vsp = vsp;
while (remaining_vsp != 0) {
    var step = sign(remaining_vsp) * min(1, abs(remaining_vsp));
    
    if (!place_meeting(x, y + step, obj_ground)) {
        y += step;
        remaining_vsp -= step;
        grounded = false;  // mid-air
    } else {
        if (step > 0) grounded = true;
        vsp = 0;
        break;
    }
}

#endregion

#region Player States
/// --- ATTACKING (example: Mouse Left Click) ---
if (mouse_check_button_pressed(mb_left)) {
    is_attacking = true;
    state_timer = 0;
}

/// --- DODGING (example:  CTRL key while moving) ---
if (keyboard_check(vk_control) && move_input != 0) {
    is_dodging = true;
    state_timer = 0;
}

/// --- STATE MACHINE ---
prev_state = state;

if (is_attacking) {
    state = "attack";
    state_timer += 1;
    if (state_timer > 15) {
        is_attacking = false;
        state_timer = 0;
    }
} else if (is_dodging) {
    state = "dodge";
    state_timer += 1;
    if (state_timer > 20) {
        is_dodging = false;
        state_timer = 0;
    }
} else if (!grounded) {
    state = "jump";
} else if (move_input != 0) {
    state = "run";
} else {
    state = "idle";
}

#endregion

#region Player Damage Event

if (invincible_timer > 0) invincible_timer -= 1;
if (damage_flash_time > 0) damage_flash_time -= 1;
if (damage_flash_time > 0) {
    image_blend = merge_color(c_red, c_white, 1 - (damage_flash_time / damage_flash_duration));
} else {
    image_blend = c_white;
}

if player_health <= 0 room_restart();

#endregion