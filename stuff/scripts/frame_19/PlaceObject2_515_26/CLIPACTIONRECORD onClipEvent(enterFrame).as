onClipEvent(enterFrame){
   if(_X < -20)
   {
      _root.nextFrame();
   }
   xspeed *= 0.85;
   _X = _X + xspeed;
   if(Key.isDown(37))
   {
      if(_X > 70)
      {
         xspeed -= 1;
      }
   }
   if(Key.isDown(39))
   {
      if(_X < 580)
      {
         xspeed += 1;
      }
   }
   if(where == 1)
   {
      targrot = 0;
      targy = 70;
   }
   if(where == 2)
   {
      if(_Y < 210)
      {
         yspeed += 0.5;
      }
      else
      {
         yspeed -= 0.45;
      }
      _Y = _Y + yspeed;
   }
   if(where == 3)
   {
      targrot = 100;
      targy = 350;
   }
   if(where == 4)
   {
      targrot = 270;
      targy = 210;
   }
   if(where !== 2)
   {
      _rotation = _rotation + (targrot - _rotation) / 8;
      _Y = _Y + (targy - _Y) / 8;
   }
   if(_Y < 0)
   {
      yspeed = 1;
   }
   if(_Y < 71)
   {
      where = 2;
   }
   if(_Y > 349)
   {
      where = 2;
   }
   if(_Y > 205 and _Y < 215)
   {
      where = 0;
      targrot = 10;
      targy = 210;
      if(where !== 4)
      {
         if(Key.isDown(38))
         {
            where = 1;
            yspeed = 0;
         }
         if(Key.isDown(40))
         {
            where = 3;
            yspeed = 0;
         }
      }
   }
}
