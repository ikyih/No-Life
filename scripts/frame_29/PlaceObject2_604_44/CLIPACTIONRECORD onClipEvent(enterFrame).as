onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -1660)
   {
      _X = -1660;
   }
   if(_X > 950)
   {
      _X = 950;
   }
   _root.energy._x = _X;
}
