onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 16;
   if(_X < -3010)
   {
      _X = -3010;
   }
   if(_X > _root.flag._x - 100)
   {
      _X = _root.flag._x - 100;
   }
   _root.energy._x = _X;
}
