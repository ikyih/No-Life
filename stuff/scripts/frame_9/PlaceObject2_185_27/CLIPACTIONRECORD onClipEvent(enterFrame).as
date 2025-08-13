onClipEvent(enterFrame){
   if(_X > 1600)
   {
      _X = 700;
   }
   if(_X == 660 and drag == false)
   {
      xspeed = 0;
   }
   if(_X > 650)
   {
      _Y = 400;
   }
   if(this.hitTest(_root.chick))
   {
      if(_root.chick._currentframe == 1 and _root.chick.qwe._currentframe > 8)
      {
         _root.chick._x += 50;
      }
      if(_root.chick._currentframe == 2 and _root.chick.qwe._currentframe > 8)
      {
         _root.chick._x -= 50;
      }
      _root.chick.skill = 0;
      if(_X > _root.chick._x)
      {
         _root.chick.gotoAndStop(3);
      }
      if(_X < _root.chick._x)
      {
         _root.chick.gotoAndStop(4);
      }
      _X = 1500;
      drag = false;
      xspeed = -10;
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
      if(_X < 10)
      {
         _X = 10;
         xspeed = (- xspeed) / 2;
      }
   }
}
