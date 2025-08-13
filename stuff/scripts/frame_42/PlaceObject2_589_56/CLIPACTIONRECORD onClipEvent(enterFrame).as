onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -810)
   {
      _X = -810;
   }
   if(_X > 700)
   {
      _X = 700;
   }
   _root.energy._x = _X;
}
