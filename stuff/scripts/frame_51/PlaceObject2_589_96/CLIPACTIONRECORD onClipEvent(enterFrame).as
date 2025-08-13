onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -2410)
   {
      _X = -2410;
   }
   if(_X > 2820)
   {
      _X = 2820;
   }
   _root.energy._x = _X;
}
