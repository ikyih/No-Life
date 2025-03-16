onClipEvent(enterFrame){
   high2 = high / 2;
   if(_X < 770)
   {
      yspeed += 1;
   }
   _Y = _Y + yspeed;
   if(_Y > 420 - high / 2)
   {
      _Y = 420 - high / 2;
      if(no == 8)
      {
         yspeed = - yspeed;
      }
      else
      {
         yspeed = (- yspeed) / 2;
      }
   }
   if(this.hitTest(_root.log1))
   {
      _X = _X + 1;
   }
   if(no == 8)
   {
      _X = _X - 5;
   }
   else
   {
      _X = _X - _root.xspeed * 4;
   }
   _rotation = _rotation - _root.xspeed * 8;
   if(_X < -30)
   {
      _X = _X + (750 + Math.random() * 640);
      no = Math.ceil(Math.random() * 8);
      yspeed = 0;
      if(no == 1)
      {
         gotoAndStop(1);
         _Y = 398;
         high = 42;
      }
      if(no == 2)
      {
         gotoAndStop(2);
         _Y = 398;
         high = 42;
      }
      if(no == 3)
      {
         gotoAndStop(3);
         _Y = 398;
         high = 42;
      }
      if(no == 4)
      {
         gotoAndStop(4);
         _Y = 398;
         high = 42;
      }
      if(no == 5)
      {
         gotoAndStop(5);
         _Y = 100;
         high = 42;
      }
      if(no == 6)
      {
         gotoAndStop(6);
         _Y = 398;
         high = 42;
      }
      if(no == 7)
      {
         gotoAndStop(7);
         _Y = 200;
         high = 42;
      }
      if(no == 8)
      {
         gotoAndStop(8);
         _Y = 200;
         _X = 1100;
         high = 21;
      }
   }
   if(_root.chick.hitTest(_X - high2,_Y,true))
   {
      if(_root.chick._currentframe < 13)
      {
         _root.chick._x -= Number(_root.chick._currentframe * 5);
      }
      _root.chick.gotoAndStop(15);
   }
   if(_root.chick.hitTest(_X,_Y - high2,true))
   {
      _root.chick._y = _Y - (high2 + _root.chick._height / 2 + 2);
      _root.chick.yspeed = -5;
   }
   while(_root.chick.hitTest(_X + high2,_Y,true))
   {
      _root.chick._x += 2;
   }
}
