onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -870)
   {
      _X = -870;
   }
   if(_X > -80)
   {
      _X = -80;
   }
   _root.energy._x = _X;
}
