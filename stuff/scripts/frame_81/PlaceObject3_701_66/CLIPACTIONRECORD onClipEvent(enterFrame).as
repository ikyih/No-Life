onClipEvent(enterFrame){
   _root.cmode = mode;
   if(_root.go == 1)
   {
      _root.delay = delay;
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
            if(delay <= 0 && yspeed < 5)
            {
               play();
               delay = (1750 - _root.evilstats.runlvl) / 100;
            }
         }
         else
         {
            _X = _X + _root.evilstats.runlvl / 100;
         }
      }
      if(mode == 2)
      {
         _Y = _Y + 1;
         _X = _X + Number(20 + _root.evilstats.flylvl) / 20;
      }
      if(mode == 3)
      {
         gotoAndStop(31);
         _X = _X + (1 + _root.evilstats.swilvl / 20);
      }
      if(mode == 4)
      {
         _Y = _Y - (0.5 + _root.evilstats.clilvl / 25);
      }
   }
}
