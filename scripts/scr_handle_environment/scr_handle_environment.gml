function scr_handle_environment(){
    if (on_special_surface) {
        switch (special_surface_type) {
            case "steps":
				var ground_level = y; // The current Y-coords of the player
				if !at_top_of_steps 
				{
					if (keyboard_check(ord("W")) && !at_top_of_steps) 
					{
						// Shifts player up the Y-axis == to # pixels of the steps Sprite + 1px
						y = ground_level  - (obj_steps1.sprite_height - 1); 
						at_top_of_steps = true;
					}
				} else 
				{
					if (keyboard_check(ord("S")) && at_top_of_steps) 
					{
						// Sets Player's Y-coords back to the ground level
						y = ground_level;
						at_top_of_steps = false;
					}
					if (keyboard_check_pressed(ord("E"))) 
					{
						var door = instance_nearest(x, y, obj_door1);	// Finds door nearest to the player
						if (door != noone) with (door) 
						{
							scr_dooropen_sound();
						}
					}
				}
                break;
			case "":
				grav_force = 1;
				break;
        }
    }
}