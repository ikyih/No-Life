onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < 210)
   {
      _X = 210;
   }
   if(_X > 950)
   {
      _X = 950;
   }
   _root.energy._x = _X;
}
