boolean collisionL()
{
  boolean returnValue = false;
  if((ballLeft()-ballW<=XpaddleL)&&(ballLeft()+ballW>=XpaddleL))
  {
    if ((ballTop()>=YpaddleL)&&(ballTop()<=YpaddleL+paddleLH))
    {
      returnValue = true;
      
    }
  }
  return returnValue;
}
boolean collisionR()
{
  boolean returnValue = false;
  if((ballLeft()+ballW>=XpaddleR)&&(ballLeft()-ballW<=XpaddleR))
  {
    if ((ballTop()>=YpaddleR)&&(ballTop()<=YpaddleR+paddleRH))
    {
      returnValue = true;
      
    }
  }
  return returnValue;
}
 /* if ((X<XpaddleL+10)&&(Y>=YpaddleL)&&(Y<=YpaddleL+paddleChange))
  //if statement to bounce the ball back from left paddle
  {
    deltaX=-deltaX;
  }*/
  /*if (X<0)//if statement to bounce the ball back from left edge
  {
    deltaX=-deltaX;
  }*/
