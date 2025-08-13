onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < 1320)
   {
      _X = 1320;
   }
   if(_X > 1880)
   {
      _X = 1880;
   }
   _root.energy._x = _X;
}
