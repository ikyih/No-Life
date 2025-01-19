onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -1230)
   {
      _X = -1230;
   }
   if(_X > -850)
   {
      _X = -850;
   }
   _root.energy._x = _X;
}
