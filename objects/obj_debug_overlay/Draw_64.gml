/// DRAW GUI EVENT - Safe version

if (!show_debug) exit;

// Only draw if the player exists
if (!instance_exists(obj_player)) exit;

var p = instance_find(obj_player, 0);
if (p != noone) {
    var list = variable_struct_get_names(p);
    var ty = 16;
    draw_text(16, ty, "=== PLAYER DEBUG ===");
    for (var i = 0; i < array_length(list); i++) {
        var name = list[i];
        var val = variable_instance_get(p, name);
        ty += 16;
        draw_text(16, ty, name + ": " + string(val));
    }
}

// Draw debug info
draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


