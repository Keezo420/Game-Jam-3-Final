window_set_size(1280,720);

// --- DEBUGGING VARIABLES ---
xpos = x;
ypos = y;

// --- Movement Variables ---
hsp = 0;				// Horizontal Speed
vsp = 0;				// Vertical Speed
move_speed = 6;			// Movement Speed
jump_speed = 12;		// Jump Speed
grav_force = 0.5;			// Gravity Force
max_fall_speed = 12;	// Maximum Vertical Speed

// --- State control ---
state = "idle";			// Current Player State 
prev_state = "idle";	// Previous Player State
facing = 1;				// Direction player is facing
grounded = false;		// Player is on ground checks

// --- Action Flags ---
is_attacking = false;	// Tracks Player attacking input
is_dodging = false;		// Tracks Player  dodging input

// --- Timer ---
state_timer = 0;		// State Timer

// --- Player Health Manager  ---
player_health=100;		// Health of the Player
damage_flash_time = 0;
damage_flash_duration = 10;
invincible_timer = 0;

// --- Interactions Manager ---
on_special_surface = false;   // True when standing in a special zone
special_surface_type = "";    // The type (e.g. "steps")
at_top_of_steps = false;

// --- Collectables Manager ---
collectibles_collected = 0;	
coins_value = 0;