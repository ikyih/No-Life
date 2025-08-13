onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -2460)
   {
      _X = -2460;
   }
   if(_X > 1880)
   {
      _X = 1880;
   }
   _root.energy._x = _X;
}
