int endScore=10;//score at which game ends
int referenceTimeA;
int referenceTimeB;
int referenceTimeC;
int scoreR=0;//starting score for right bike
int scoreL=0;//starting score of left bike

void score()//function to update the score of the game
{
   referenceTimeA=millis();
    if(referenceTimeA-referenceTimeB>1000)//debounce code to fix bugs so that score can only go up once every second
    {
    if(X>width-30)
    {
      scoreR=scoreR+1;
      referenceTimeB=millis();
    }
    }
    if(referenceTimeA-referenceTimeC>1000)
    {
    if(X<30)
    {
      scoreL=scoreL+1;
      referenceTimeC=millis();
    }
    }
}

