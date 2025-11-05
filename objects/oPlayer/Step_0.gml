
my_ySpeed+=0.1;
my_xSpeed = 0;
// Variables for player movement 


// Check for Left movement input
if (keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	my_xSpeed=-1;	
	image_xscale = -1;
}

// Check for Right movement input
if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	my_xSpeed=+1;	
	image_xscale = +1;

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

// Check for Shift input to increase player speed.
if (keyboard_check(vk_shift))
{
	my_xSpeed += my_xSpeed * 2;
}

move_and_collide(my_xSpeed, my_ySpeed, oWall);

