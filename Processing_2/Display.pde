float j=1;
float k=1;

int rightBar=1;
int rightBarX;
int leftBar=1;
int leftBarX;

int barLimit=10;
int barWidth=10;
int barError=2;
int barY=10;
int barHeight=25;

void display()
{
  /*if (frame != null) //resize code
    {
    frame.setResizable(true);
    }*/
     
    
  rightBarX=width-200;
  leftBarX=50;
  fill(-1);
  rect(0,60,width,2);
  fill(-1);
  rect(0,height-20,width,2);
  rightBar();
  leftBar();
  if(scoreR<endScore&&scoreL<endScore)// Loop to draw the line in the middle
 {
 for(int i = cautionDistanceTop; i<height-cautionDistanceTop; i+=15)
 {
  rect (width/2,i,4,10);  
 }
 }
  textSize(48);
     
  if((scoreL>=endScore)||(scoreR>=endScore))
  {
    X=width/2;
    Y=height/2;
    text(scoreR,width/2-100,45);
    text(scoreL,width/2+80,45);
    textSize(32);
    text("GAME OVER!",width/2-290,100);
    text("PRESS R TO RESET",width/2+100,100);
    //fill(0,0,0,100);
    //rect(0,0,width,height);
    noLoop();
  } 
  else
  {
     text(scoreR,width/2-100,45);
     text(scoreL,width/2+90,45);
  }
 
  }
 
void rightBar()
{
   fill(-1);
  rect(rightBarX+barWidth*2-barError,barY-barError,barWidth*(barLimit+1)+barError,barError);
  rect(rightBarX+barWidth*2-barError,barY-barError,barError,barHeight+barError);
  rect(rightBarX+barWidth*2-barError,barY+barHeight,barWidth*(barLimit+1)+barError,barError);
  rect(rightBarX+barWidth*2-barError+barWidth*(barLimit+1)+barError,barY-barError,barError,barHeight+barError);
  for (int rightBar=1;rightBar<j;rightBar++) {
    //color interA=lerpColor(0, 1, (float(i)/j));
    fill(-1);
    rect(rightBarX+rightBar*barWidth+barWidth, barY, barWidth,barHeight);
    if(rightBar>barLimit)
    {
      j=barLimit+barError;
    }
  }
}

void leftBar()
{
  rect(leftBarX+barWidth*2-barError,barY-barError,barWidth*(barLimit+1)+barError,barError);
  rect(leftBarX+barWidth*2-barError,barY-barError,barError,barHeight+barError);
  rect(leftBarX+barWidth*2-barError,barY+barHeight,barWidth*(barLimit+1)+barError,barError);
  rect(leftBarX+barWidth*2-barError+barWidth*(barLimit+1)+barError,barY-barError,barError,barHeight+barError);
  for (int leftBar=1;leftBar<k;leftBar++) {
    fill(-1);
    //color interA=lerpColor(0, 1, (float(i)/k));
    rect(leftBarX+leftBar*barWidth+barWidth, barY, barWidth,barHeight);
    if(leftBar>barLimit)
    {
      k=barLimit+barError;
    }
  }
}
//CODE FOR FULLSCREEN
/*
boolean sketchFullScreen() {
  return true;
}*/
//FUNCTION TO MAKE GAME RESIZABLE
void makeResizable()
{
if (frame != null) //resize code
    {
    frame.setResizable(true);
    }
}  
