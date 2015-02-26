//function to move left paddle with up and down keYs
//int bar1=constrain(1,0,10);
//int bar2=constrain(1,0,10);

void keyPressed() {
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
