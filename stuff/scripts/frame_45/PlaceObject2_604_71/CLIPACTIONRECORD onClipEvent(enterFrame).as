onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 8;
   if(_X < -120)
   {
      _X = -120;
   }
   if(_X > 1340)
   {
      _X = 1340;
   }
   _root.energy._x = _X;
}
