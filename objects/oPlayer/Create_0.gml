//code that runs when player is created  
//how many pixels per frame we want the player to move
xSpeed = 4;

//what direction the player is facing (where 1 = right, -1 = left, 0 = front/notmoving)
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.3;

jumpForce = -11;

//coins and points

global.coins = 0;