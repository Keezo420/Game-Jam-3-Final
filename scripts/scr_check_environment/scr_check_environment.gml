function scr_check_environment(){
	if (place_meeting(x, y, obj_steps1)) {
		on_special_surface = true;
		special_surface_type = "steps";
	} else
	{
		on_special_surface = false;
	    special_surface_type = "";
	}
}