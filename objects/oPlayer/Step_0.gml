// Variables for player velocity
my_ySpeed+=0.1;
my_xSpeed = 0;

//Global boolean to check if the player is in a moving state horizontally.
hMoving= false;
 
// Check for Left movement input
if (keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	my_xSpeed=-2;	
	image_xscale = -1;
	hMoving=true;
}

// Check for Right movement input
if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	my_xSpeed=+2;	
	image_xscale = +1;
	hMoving=true;

}

// Check if Player is on the ground.
if place_meeting(x, y+1, oWall)
{
	my_ySpeed = 0;
	// allow for Jump input checks, since player is grounded.
	if (keyboard_check(vk_space))
	{
		my_ySpeed = -4;
	}
}

// if moving in a direction, pressing TAB will perform a dodge/phase shift in that direction.
if (hMoving and keyboard_check_pressed(vk_tab))
{
	move_and_collide(my_xSpeed*20, my_ySpeed, oPlayer);
	
}

// Check for Shift input to increase player speed.
if (keyboard_check(vk_shift))
{
	my_xSpeed += my_xSpeed * 2;
}

// Moves Player object relative to the X and Y speed values
move_and_collide(my_xSpeed, my_ySpeed, oWall);


// Event to check if the player died or not.
if player_health <= 0
{
	room_restart();	
}

