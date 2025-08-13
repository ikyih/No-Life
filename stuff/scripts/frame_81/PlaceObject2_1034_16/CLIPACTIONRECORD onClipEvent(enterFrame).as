onClipEvent(enterFrame){
   if(_root.go == 1)
   {
      _X = _X + (_root.chick._x - _X) / 16;
   }
   else if(_root.starts == 1)
   {
      if(Key.isDown(39))
      {
         _X = _X + 10;
      }
      if(Key.isDown(37))
      {
         _X = _X - 10;
      }
   }
   if(_X < 320)
   {
      _X = 320;
   }
   _root.energy._x = _X;
}
