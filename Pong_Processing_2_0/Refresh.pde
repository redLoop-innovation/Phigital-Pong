void refresh()
{
  if(X<0)
  {
    noLoop();
    delay(500);
    //if (arduino.digitalRead(5) == Arduino.HIGH)
    loop();
    X=width/2;
    Y=height/2;
    deltaX=5;
    deltaY=-5;
  }
  if(ballRight()>width)
  {
    noLoop();
    delay(500);
    //if (arduino.digitalRead(6) == Arduino.HIGH)
    loop();
    X=width/2;
    Y=height/2;
    deltaX=-5;
    deltaY=5;
  }
}
 /* if ((ballRight()>width)||(X<0))//if statement to end the game
  {
    fill(0,0,0,100);
    rect(0,0,width,height);
    noLoop();
  }*/
