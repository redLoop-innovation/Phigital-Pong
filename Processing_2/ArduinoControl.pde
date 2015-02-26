//PADDLE CONTROL THROUGH ARDUINO INPUTS A0 AND A1

import processing.serial.*; // reference the serial library

import cc.arduino.*; // reference the arduino library

Arduino arduino; // create a variable arduino of the Arduino data type

int cautionDistanceTop=60;//max distance from the Top border of the processing window
int cautionDistanceBottom=20;//max distance from the bottom border of the processing window
int potentiometerError1=600;//range of potentiometer is 440-808
int potentiometerError2=400;
float potentiometerResolution=2.5; //adjust resolution for bigger or smaller screens.

void leftPaddleMove()//function to control left paddle through arduino
{
  println(arduino.analogRead(1));
  //YpaddleL=arduino.analogRead(1);
  YpaddleL=((potentiometerError1-arduino.analogRead(1))*potentiometerResolution);               
  if (YpaddleL>height-paddleLH-cautionDistanceBottom-error)
  {
    YpaddleL=height-paddleLH-cautionDistanceBottom-error;
  }
  else if (YpaddleL<0+cautionDistanceTop+error)
  {
    YpaddleL=0+cautionDistanceTop+error;
  }
}
void rightPaddleMove()//function to control right paddle through arduino
{
  println(arduino.analogRead(0));
  //YpaddleR=arduino.analogRead(0);
  YpaddleR=((arduino.analogRead(0)-potentiometerError2)*potentiometerResolution);
  if (YpaddleR>height-paddleRH-cautionDistanceBottom-error)
  {
    YpaddleR=height-paddleRH-cautionDistanceBottom-error;
  }
  else if (YpaddleR<0+cautionDistanceTop+error)
  {
    YpaddleR=0+cautionDistanceTop+error;
  }
}
//powerbar for storing speed
