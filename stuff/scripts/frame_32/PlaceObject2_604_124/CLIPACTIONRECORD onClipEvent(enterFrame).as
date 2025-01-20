onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < 142)
   {
      _X = 142;
   }
   if(_X > 450)
   {
      _X = 450;
   }
   _root.energy._x = _X;
}
