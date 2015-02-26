

void setup()
{
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);//code to define the data rate and arduino com - Note: In Arduino.list()[0], 0 is the com port. By default 0 detects the com port automatically
  size(1280, 760);//size of the window
  XpaddleL=40;//setting the X coordinate of left paddle after the size of the window is set
  XpaddleR=width-40;//setting the X coordinate of right paddle after the size of the window is set
  X=width/2;//starting starting x coordinate of the ball
  Y=height/2;//starting starting y coordinate of the ball
  arduino.pinMode(2, Arduino.INPUT);//setting the arduino input for magnetic sensor
  arduino.pinMode(3, Arduino.INPUT);//setting the arduino input for magnetic sensor
  arduino.pinMode(4, Arduino.INPUT);//setting the arduino input for magnetic sensor
  minim = new Minim(this);//the following code is to load the music files for sound effects of the game
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
  
  //makeResizable();//function to make the game resizable : Refer to display tab
  //goFullscreen();//function to make the game fullscreen : Refer to display tab
  display();//function to define the display of the projection. This includes the score, power bar, line in the middle and the aesthetic lines to seperate evrything : Refer to Display Tab
  //speedControl();//function to change the speed of the ball according to the rate at which the rider paddles the bike : Refer to SpeedControl Tab
  //holeSystem();//function to add holes to the game : Refer to Holes Tab
  ballMovement();//function to make the ball move : Refer to Ball Tab
  paddles();//function to define the paddles on each side : Refer to Paddles Tab
  //brightnessControlLeft();//Function to change the brightness of left side of the screen : Refer to BrightnessControl Tab
  //brightnessControlRight();//Function to change the brightness of right side of the screen : Refer to BrightnessControl Tab
  score();//function to update the score of the game : Refer to Score Tab
  //leftPaddleMove();//function to move the left paddle using arduino : Refer to Arduino Control Tab 
  //rightPaddleMove();//function to move the right paddle using arduino : Refer to Arduino Control Tab
  music();//funtion to play the sound effects : Refer to Music Tab    
  ballAngle();//Funtion to change the ball angle according to the position it hits the paddle : Refer to BallAngle Tab
  
  /*println("Xspeed= ",deltaX);//xspeed display Debugging code to check the horizontal speed of the ball
  println("Yspeed= ",deltaY);//yspeed display Debugging code to check the vertical speed of the ball*/
 
}


