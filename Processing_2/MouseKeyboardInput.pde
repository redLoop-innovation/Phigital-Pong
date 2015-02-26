//THIS TAB HAS CODE TO CONTROL THE PADDLES USING KEYBOARD AND MOUSE
//THIS TAB ALSO INCLUDES CODE TO TEST THE POWER BARS USING ARROW KEYS

void keyPressed()//function to control the paddles using arrow keys on the keyboard and test the power barrs using arrow keys
{
  if (key=='w'||key=='W')
    {
      YpaddleL = YpaddleL-paddleChange;
    }
    if (key=='s'||key=='S')
    {
      YpaddleL = YpaddleL+paddleChange;
    }
  if (key == CODED) {
    
    if (keyCode == UP) {
      YpaddleR = YpaddleR-paddleChange;
    } 
    else if (keyCode == DOWN) 
    {
      YpaddleR = YpaddleR+paddleChange;
    }
    if (keyCode == LEFT)
    {
    YpaddleL = YpaddleL-paddleChange;
    }
    else if (keyCode == RIGHT)
    {
      YpaddleL = YpaddleL+paddleChange;
    }
  }
  if (key=='r'||key=='R')
  {
    loop();
    //reset();
    scoreR=0;
    scoreL=0;
  }
if (key == CODED) {
    if (keyCode == RIGHT) {
      j++;
    } 
    else if (keyCode == LEFT) {
      j--;
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      k++;
    } 
    else if (keyCode == DOWN) {
      k--;
    }
  }
}

/*void mouseMoved()//function to control the right paddle using mouse. Note: Change YpaddleR to YpaddleL to control the left paddle
{
  YpaddleR = mouseY;
}*/
