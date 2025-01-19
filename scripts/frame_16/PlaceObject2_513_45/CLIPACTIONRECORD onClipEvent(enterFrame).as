onClipEvent(enterFrame){
   _X = _X - _root.xspeed * 4;
   _rotation = _rotation - _root.xspeed * 8;
   if(_X < -30)
   {
      _X = _X + (640 + Math.random() * 640);
      no = Math.ceil(Math.random() * 3);
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
   }
   if(this.hitTest(_root.chick))
   {
      if(_root.chick._currentframe < 13)
      {
         _root.chick._x += Number(_root.chick._currentframe * 5);
      }
      _root.chick.gotoAndStop(15);
   }
}
