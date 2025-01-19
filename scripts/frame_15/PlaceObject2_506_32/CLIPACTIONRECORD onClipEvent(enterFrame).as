onClipEvent(enterFrame){
   _X = _X - _root.chick.xspeed;
   if(_X < 0)
   {
      _X = _X + 640;
   }
}
