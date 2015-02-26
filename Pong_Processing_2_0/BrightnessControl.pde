float timeAL=0;
float timeBL=1;
float timeL;
float tuneTimeL;
float speedL;
float brightnessL;
float lastSpeedL=0;

float distance = 2000; 

float timeAR=0;
float timeBR=1;
float timeR;
float tuneTimeR;
float speedR;
float lastSpeedR=0;
float brightnessR;
float brightnessTimeRA;
float brightnessTimeRB;

void brightnessControlLeft()// function to control brightness of the left half of the screen using magnetic sensors from the left bike
{
   if (arduino.digitalRead(2) == Arduino.HIGH)
  {
    timeAL=millis();
    timeL=timeAL-timeBL;
    //prfloatln("time of contact=",time/1000);
    //delay(1000);
    timeBL=timeAL;
   }
   if(timeL>50)
   {
   speedL=(60000/timeL);
   k = distance/timeL;
   //delay(100);
   println("SPEED=",speedL);
   /*if(speedL>lastSpeedL)
   {
   }*/
   lastSpeedL=speedL;
   
   }
   brightnessL = 250 - (speedL);
   fill(0, 0, 0, brightnessL); 
   rect(0, 0, width/2, height);
}

void brightnessControlRight()// function to control brightness of the right half of the screen using magnetic sensors from the right bike
{
   brightnessTimeRA=millis();
   brightnessTimeRB=millis();
  if (arduino.digitalRead(3) == Arduino.HIGH)
  {
   
    timeAR=millis();
    timeR=timeAR-timeBR;
    //prfloatln("time of contact=",time/1000);
    //delay(1000);
    timeBR=timeAR;
    brightnessTimeRB=0;
   }
   if(timeR>50)
   {
   speedR=(60000/timeR);
   j = distance/timeR;
   //delay(100);
   println("SPEED=",speedR);
   /*if(speedL>lastSpeedL)
   {
   }*/
   lastSpeedR=speedR;
   }
   
   if (brightnessTimeRB-brightnessTimeRA>2000)
   {
     brightnessR=250;
   }
   else
   {
    brightnessR = 250 - (speedR);
   }
   fill(0, 0, 0, brightnessR); 
   rect(width/2, 0, width, height);
}

