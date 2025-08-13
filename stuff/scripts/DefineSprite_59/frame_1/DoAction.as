stop();
bb_time = Math.random() * 230 + 60;
bb_startTime = 0;
this.onEnterFrame = function()
{
   bb_startTime++;
   if(bb_startTime > bb_time)
   {
      delete this.onEnterFrame;
      this.gotoAndPlay(2);
   }
};
