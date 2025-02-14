onClipEvent(enterFrame){
   if(_Y < 25)
   {
      _Y = 25;
      yspeed = 0;
   }
   if(_Y > 430)
   {
      _root.nextFrame();
   }
   if(_rotation < -90)
   {
      _rotation = -90;
   }
   if(_rotation > 90)
   {
      _rotation = 90;
   }
   _root.dist = Number(_root.dist + Math.round(xspeed));
   xspeed *= 0.999;
   _Y = _Y + yspeed;
   speed = 20 - xspeed;
   if(speed < 0)
   {
      speed = 0;
   }
   yspeed += speed / 40;
   _root.xspeed = xspeed;
   if(Key.isDown(37))
   {
      yspeed -= 0.5;
      xspeed -= 0.05;
   }
   if(Key.isDown(39))
   {
      yspeed += 0.5;
      xspeed += 0.05;
   }
   angle = Math.atan(yspeed / xspeed) / 0.017453292519943295;
   if(xspeed < 0)
   {
      angle += 180;
   }
   _rotation = angle;
}
