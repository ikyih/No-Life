onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -610)
   {
      _X = -610;
   }
   if(_X > -200)
   {
      _X = -200;
   }
   _root.energy._x = _X;
}
