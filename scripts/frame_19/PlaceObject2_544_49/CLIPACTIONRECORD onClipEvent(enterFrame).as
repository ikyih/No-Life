onClipEvent(enterFrame){
   _X = _X + xspeed;
   xspeed -= 0.0025;
   _root.xspeed = xspeed;
   _root.dist = Number(_root.dist - Math.round(xspeed / 2));
   while(this.hitTest(_root.chick._x,_root.chick._y - _root.chick._height / 2,true))
   {
      _root.chick.yspeed += 1;
      _root.chick._y += 1;
   }
   while(this.hitTest(_root.chick._x + _root.chick._width / 2,_root.chick._y,true))
   {
      _root.chick.xspeed -= 1;
      _root.chick._x -= 1;
   }
   while(this.hitTest(_root.chick._x,_root.chick._y + _root.chick._height / 2,true))
   {
      _root.chick.yspeed -= 1;
      _root.chick._y -= 1;
   }
   while(this.hitTest(_root.chick._x - _root.chick._width / 2,_root.chick._y,true))
   {
      _root.chick.xspeed += 1;
      _root.chick._x += 1;
   }
   if(_X < -250)
   {
      _X = _X + 1140;
      num = Math.ceil(Math.random() * 6);
      if(num == 1)
      {
         gotoAndStop(1);
         coin._y = 70;
      }
      if(num == 2)
      {
         gotoAndStop(2);
         coin._y = 350;
      }
      if(num == 3)
      {
         gotoAndStop(3);
         coin._y = 70;
      }
      if(num == 4)
      {
         gotoAndStop(4);
         coin._y = 350;
      }
      if(num == 5)
      {
         gotoAndStop(5);
         coin._y = 70;
      }
      if(num == 6)
      {
         gotoAndStop(6);
         coin._y = 350;
      }
   }
}
