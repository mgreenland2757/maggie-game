/// @description basic enemy collision 
// You can write your code in this editor

//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)
//destroy enemy and bounce in the air 
	{
		EnemyHurt();
		yVector = 0.8*jumpForce;
	}
//collide with enemy and take damage 
else
	{
		x = x- xVector*10;
		PlayerHurt();
	}