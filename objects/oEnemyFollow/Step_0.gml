if(isInvincible) 
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

xDirection = sign(oPlayer.x - x);
xVector = xSpeed * xDirection

if ((oPlayer.x - x) <= 64)
{
	x = x + xVector
}
