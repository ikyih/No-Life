onClipEvent(enterFrame){
   if(this.hitTest(_root.log1))
   {
      _X = _X + 1;
   }
   _X = _X - _root.xspeed * 4;
   _rotation = _rotation - _root.xspeed * 8;
   if(_X < -30)
   {
      _X = _X + (640 + Math.random() * 640);
      no = Math.ceil(Math.random() * 7);
      if(no == 1)
      {
         gotoAndStop(1);
      }
      if(no == 2)
      {
         gotoAndStop(2);
      }
      if(no == 3)
      {
         gotoAndStop(3);
      }
      if(no == 4)
      {
         gotoAndStop(4);
      }
      if(no == 5)
      {
         gotoAndStop(5);
      }
      if(no == 6)
      {
         gotoAndStop(6);
      }
      if(no == 7)
      {
         gotoAndStop(7);
      }
   }
   if(_root.chick.hitTest(_X - 20,_Y,true) or _root.chick.hitTest(_X + 20,_Y,true) or _root.chick.hitTest(_X,_Y - 20,true))
   {
      if(_root.chick._currentframe < 13)
      {
         _root.chick._x += Number(_root.chick._currentframe * 5);
      }
      _root.chick.gotoAndStop(15);
   }
}
