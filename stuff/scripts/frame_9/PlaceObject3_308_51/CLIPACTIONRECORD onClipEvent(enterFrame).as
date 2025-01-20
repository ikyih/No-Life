onClipEvent(enterFrame){
   if(_X < -960)
   {
      _X = -60;
   }
   if(_X == -20 and drag == false)
   {
      xspeed = 0;
   }
   if(_X < -10)
   {
      _Y = 400;
   }
   if(this.hitTest(_root.chick))
   {
      _root.chick.skill = 1;
      if(_X > _root.chick._x)
      {
         _root.chick.gotoAndStop(3);
      }
      if(_X < _root.chick._x)
      {
         _root.chick.gotoAndStop(4);
      }
      _X = -860;
      drag = false;
      xspeed = 10;
   }
   _X = _X + xspeed;
   _Y = _Y + yspeed;
   if(drag == true)
   {
      xspeed = (- (_X - _root._xmouse)) / 2;
      yspeed = (- (_Y - _root._ymouse)) / 2;
   }
   if(drag == false)
   {
      yspeed += 1;
      if(_Y > 420)
      {
         _Y = 420;
         yspeed = (- yspeed) / 2;
      }
      if(_X > 630)
      {
         _X = 630;
         xspeed = (- xspeed) / 2;
      }
   }
}
