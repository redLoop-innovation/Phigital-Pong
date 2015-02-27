//THIS TAB DRAWS THE HOLES WITHIN THE GAME AND CONTAINS FUNCTIONS TO UPDATE SCORE AND DISAPPEAR THE BALL WHEN IT GOES INTO THE HOLE

//LEFT SIDE HOLES
int hole1Xposition=-2000;
int hole1Yposition;
int hole1radius=60;

int hole2Xposition=-2000;
int hole2Yposition;
int hole2radius=60;

//RIGHT SIDE HOLES
int hole3Xposition=-2000;
int hole3Yposition;
int hole3radius = 60;

int hole4Xposition=-2000;
int hole4Yposition;
int hole4radius = 60;

void holeSystem()
{
 //LEFT HOLES 
 ellipse(hole1Xposition,hole1Yposition,hole1radius*2,hole1radius*2);
 if((X-ballW/2<hole1Xposition)&&(X+ballW/2>hole1Xposition))
  {
    if ((Y>=hole1Yposition-hole1radius)&&(Y<=hole1Yposition+hole1radius))
    {
      scoreL=scoreL+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(5) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=5;
      deltaY=-5;
    }
  } 
 ellipse(hole2Xposition,hole2Yposition,hole2radius*2,hole2radius*2);
 if((X-ballW/2<hole2Xposition)&&(X+ballW/2>hole2Xposition))
  {
    if ((Y>=hole2Yposition-hole2radius)&&(Y<=hole2Yposition+hole2radius))
    {
      scoreL=scoreL+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(5) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=3;
      deltaY=-3;
    }
  } 

 //RIGHT HOLES
 ellipse(hole3Xposition,hole3Yposition,hole3radius*2,hole3radius*2);
 if((X-ballW/2<hole3Xposition)&&(X+ballW/2>hole3Xposition))
  {
    if ((Y>=hole3Yposition-hole3radius)&&(Y<=hole3Yposition+hole3radius))
    {
      scoreR=scoreR+1;
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
 ellipse(hole4Xposition,hole4Yposition,hole4radius*2,hole4radius*2);
 if((X-ballW/2<hole4Xposition)&&(X+ballW/2>hole4Xposition))
  {
    if ((Y>=hole4Yposition-hole4radius-7)&&(Y<=hole4Yposition+hole4radius-7))
    {
      scoreR=scoreR+1;
      noLoop();
      delay(500);
      //if (arduino.digitalRead(6) == Arduino.HIGH)
      loop();
      X=width/2;
      Y=height/2;
      deltaX=-3;
      deltaY=3;
    }
  }  
   
}


