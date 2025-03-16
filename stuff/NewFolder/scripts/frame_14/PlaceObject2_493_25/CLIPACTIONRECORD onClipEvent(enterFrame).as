onClipEvent(enterFrame){
   _root.xspeed = xspeed;
   _root.speed = Math.round(_root.xspeed) + "MPH";
   if(timerstop !== 1)
   {
      _root.dist = Number(_root.dist + Math.round(xspeed * 2));
   }
   if(_currentframe < 15)
   {
      _Y = _Y + yspeed;
      yspeed += 0.5;
      if(_Y > 391)
      {
         _Y = 390;
         yspeed = 0;
         gotoAndStop(1);
      }
      if(_Y > 390)
      {
         _Y = 390;
         yspeed = 0;
      }
      if(_Y < 388)
      {
         _X = _X + xspeed;
         if(_X < 125)
         {
            _X = _X + 1;
         }
         if(yspeed < 0)
         {
            gotoAndStop(2);
         }
         if(yspeed > 0)
         {
            gotoAndStop(13);
         }
      }
      xspeed += 0.001;
      _X = _X - xspeed;
      if(xspeed > 4)
      {
         xspeed = 4;
      }
      if(_X < 100 and _currentframe == 1)
      {
         play();
      }
      if(Key.isDown(38))
      {
         if(_Y > 388)
         {
            if(_currentframe == 1 or _currentframe == 2 or _currentframe == 3 or _currentframe == 4 or _currentframe == 5)
            {
               yspeed = -10;
            }
         }
      }
   }
   else
   {
      if(nojump != 1)
      {
         yspeed = -5;
         nojump = 1;
      }
      _Y = _Y + yspeed;
      yspeed += 1;
      _X = _X - _root.xspeed * 4;
      _rotation = _rotation - 10;
   }
}
