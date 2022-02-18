/// @description enemy follow collision 

//check to see if there is a collision between oPlayer & the top of oEnemy
if (y <= other.y)
//destroy enemy and bounce in the air 
	{
		EnemyHurt();
		yVector = 0.8*jumpForce;
	}
//collide with enemy and take damage 
else
	{
		PlayerHurt();
	}