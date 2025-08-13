onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -1650)
   {
      _X = -1650;
   }
   if(_X > 650)
   {
      _X = 650;
   }
   _root.energy._x = _X;
}
