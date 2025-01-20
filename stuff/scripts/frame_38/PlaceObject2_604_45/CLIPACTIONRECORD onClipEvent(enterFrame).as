onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -2460)
   {
      _X = -2460;
   }
   if(_X > 2050)
   {
      _X = 2050;
   }
   _root.energy._x = _X;
}
