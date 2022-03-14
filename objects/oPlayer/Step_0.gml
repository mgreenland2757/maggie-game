///@description movement
//keyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space)
dash = keyboard_check_pressed(vk_control)

if left
{
	omniDirection = -1;
}

if right
{
	omniDirection = 1;
}

//Horizontal Movement
xDirection = right - left;
xVector = xDirection * xSpeed;

if dash
{
	dashing = true;
}

if dashing
{
	dashTimer -= 1/room_speed;
	if dashTimer <= 0
	{
		dashing = false;
		dashTimer = 0.3;
	}
	if (!place_empty(x + xVector, y))
		{
		xVector = 0;
		}
	//otherwise move fast
	if omniDirection = -1
	{
		x = x - 10;
	}
	if omniDirection = 1
	{
		x = x + 10;
	}
	if (!place_empty(x , y + yVector, oWall))
		{
			//check one pixel to the up or down of us until we collide with a oWall
			// ! means "not"
			while(!place_empty(x, y + sign(yVector)))
				{
					//move the one pixel
					y = y + sign(yVector);
				}
				yVector = 0;
		}
}

else
{
	if (place_meeting(x + xVector, y, oWall))
		{
			//check one pixel to the left or right of us until we collide with oWall
			// ! means "not"
			while(!place_meeting(x + xVector, y, oWall))
				{
				//only move one pixel at a time until you hit a oWall
				x = x + xDirection
				}
				xVector = 0;
		}
	//otherwise move normal
	x = x + xVector;

	//Vertical Movement
	yVector = yVector + grv;

	if (place_meeting(x , y + yVector, oWall))
		{
			//check one pixel to the up or down of us until we collide with a oWall
			// ! means "not"
			//"sign" is going to return the positive or negative sign for a value (-1,+1)
			//sign(yVector) is yVector is postive it will return a postive 1, and if our yVector is negative, it will return a negative 1
			while(!place_meeting(x, y + sign(yVector), oWall))
				{
				//only move 1 pixel at a time until you hit a oWall
				y = y + sign(yVector);
				}
				yVector = 0;
		}
	y = y + yVector;
}

//if we are touching oWall and we press the jump key, fly like an eagle
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}

//die in a pit and restart level
if (y >= room_height)
	
	{
		PlayerDeath();
	}