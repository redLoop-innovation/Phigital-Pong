int error=5;

void setup()
{
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  size(1900, 1080);//size of the window
  XpaddleL=40;//setting the X coordinate of left paddle after the size of the window is set
  XpaddleR=width-50;//setting the X coordinate of right paddle after the size of the 
                    //window is set
  X=width/2;
  Y=height/2;
  arduino.pinMode(2, Arduino.INPUT);
  arduino.pinMode(3, Arduino.INPUT);
  arduino.pinMode(4, Arduino.INPUT);
  //timeAL=0;
  minim = new Minim(this);//music
  //backgroundMusic = minim.loadFile("backgroundMusic.mp3", 2048);
  //backgroundMusic.play();
  edgeBounceAudio = minim.loadSample("edgeBounceAudio.mp3",512);
  paddleBounceAudio = minim.loadSample("paddleBounceAudio.wav",512);
}

void draw()
{
  refresh();
  smooth();
  background(0,0,0);//background colour
  stroke(255,255,255); 
  fill(255);
  rect(X,Y,ballW,ballH);//size of the ball
  //fill(0 ,0,0);
  //rect(300,10,200,100);
  display();
  //speedControl();
  holeSystem();
  ballMovement();
  paddles();
  //brightnessControlLeft();
  //brightnessControlRight();
  score();
  leftPaddleMove();
  rightPaddleMove();
  music();
  ballAngle();  
  //println("Xspeed= ",deltaX);//xspeed display
  //println("Yspeed= ",deltaY);//yspeed display
  //println("Xspeed= ",X);
 
}

