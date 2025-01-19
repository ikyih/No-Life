onClipEvent(enterFrame){
   if(_root.go == 1)
   {
      _root.delay2 = delay;
      if(mode == 1)
      {
         _Y = _Y + yspeed;
         yspeed += 1;
         if(_currentframe > 12)
         {
            gotoAndStop(1);
         }
         if(_currentframe == 1)
         {
            delay -= 1;
            if(delay <= 0)
            {
               play();
               delay = (1750 - level) / 100;
            }
         }
         else
         {
            _X = _X + level / 100;
         }
      }
      if(mode == 2)
      {
         _Y = _Y + 1;
         _X = _X + Number(20 + level) / 100;
      }
      if(mode == 3)
      {
         gotoAndStop(31);
         _X = _X + (1 + level / 200);
      }
   }
}
