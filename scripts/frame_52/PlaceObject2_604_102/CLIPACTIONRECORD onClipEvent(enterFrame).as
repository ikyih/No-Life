onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -2530)
   {
      _X = -2530;
   }
   if(_X > _root.marker._x)
   {
      _X = _root.marker._x;
   }
   _root.energy._x = _X;
}
