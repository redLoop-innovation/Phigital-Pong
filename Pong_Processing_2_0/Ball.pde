float X;
float Y;
float ballH=30;//height of the ball
float ballW=30;//width of the ball
float deltaX=-7;//random(1,2);//speed of change in X coordinate
float deltaY=-7;//random(1,2);//speed of change in Ycoordinate
float speedVariableY=15;
float speedVariableX=15;

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

void ballMovement()
{
  X=X+deltaX;//change in horizontal position of the ball
  Y=Y+deltaY;//change in verticle position of the ball
    /*if (ballLeft()<0)
  {
    //deltaX=-deltaX;
    deltaX=-speed-1;
  }*/

  if (ballBottom()>height-cautionDistanceBottom)
  //added 20 to adjust the difference
  //if statement to bounce the ball back from bottom
  {
    deltaY=-deltaY;
    //deltaY=-speed-1;
  }
 
  if (ballTop()<0+cautionDistanceTop)//if statement to bounce the ball back from 
  {
    deltaY=-deltaY;
    //deltaY=speed+1;
  }
}
