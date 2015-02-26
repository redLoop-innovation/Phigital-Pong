int endScore=10;//score at which game ends
int referenceTimeA;
int referenceTimeB;
int referenceTimeC;
int scoreR=0;
int scoreL=0;

void score()
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

