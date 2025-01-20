onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -2090)
   {
      _X = -2090;
   }
   if(_X > -1050)
   {
      _X = -1050;
   }
   _root.energy._x = _X;
}
