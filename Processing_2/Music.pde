import ddf.minim.*;

Minim minim;//audio context
AudioPlayer backgroundMusic;
AudioSample edgeBounceAudio;
AudioSample paddleBounceAudio;
//AudioSample 


void music()
{
  if ((ballBottom()>height-cautionDistanceBottom)||(ballTop()<0+cautionDistanceTop))
   {
    edgeBounceAudio.trigger();
   }
   if ((collisionL())||collisionR())
   {
    paddleBounceAudio.trigger(); 
   }
 }
