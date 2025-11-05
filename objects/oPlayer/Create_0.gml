window_set_size(1280,720);
image_xscale=1;

hMoving = false;
vMoving = false;
dodge_counter = 0;

// Sets variables for player's speed on X and Y axis.
my_xSpeed= 0;		
my_ySpeed= 0;
moveX=0;
moveY=0;

// Tracks the health of the player, instantiated with a default value of 100.
player_health=100;

// Tracks the number of items collected by the player.
collectibles_collected = 0;
coins_value = 0;