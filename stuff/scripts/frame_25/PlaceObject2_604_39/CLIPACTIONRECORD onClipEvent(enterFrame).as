onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -780)
   {
      _X = -780;
   }
   if(_X > -270)
   {
      _X = -270;
   }
   _root.energy._x = _X;
}
