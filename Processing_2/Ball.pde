float X;//define x cordinate for ball
float Y;//define y coordinate of the ball
float ballH=30;//height of the ball
float ballW=30;//width of the ball
float deltaX=-7;//random(1,2);//initial horizontal speed of the ball. Note: use the random code and change the range to get a random speed after every point
float deltaY=-7;//random(1,2);//initial vertical speed of the ball. Note: use the random code and change the range to get a random speed after every point
float speedVariableY=15;//vertical speed of the ball when it hits a paddle
float speedVariableX=15;//horizontal speed of the ball when it hits a paddle

//following functions are used throughout the code as a replacement for each edge of the square ball to make the code more dynamic.
float ballRight()
{
  return X+ballW;
}
float ballLeft()
{
  return X;
}
float ballTop()
{
  return Y;
}
float ballBottom()
{
  return Y+ballH;
}

void ballMovement()//function to bounce the ball off from top and bottom edges
{
  X=X+deltaX;//change in horizontal position of the ball
  Y=Y+deltaY;//change in verticle position of the ball
 

  if (ballBottom()>height-cautionDistanceBottom)
  //added 20 to adjust the difference
  //if statement to bounce the ball back from bottom
  {
    deltaY=-deltaY;
    //deltaY=-speed-1;//use this when using speed control through magnetic switches
  }
 
  if (ballTop()<0+cautionDistanceTop)//if statement to bounce the ball back from top
  {
    deltaY=-deltaY;
    //deltaY=speed+1;//use this when using speed control through magnetic switches
  }
}
