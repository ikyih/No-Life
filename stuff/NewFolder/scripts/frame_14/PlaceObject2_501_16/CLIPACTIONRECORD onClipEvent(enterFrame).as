onClipEvent(enterFrame){
   _X = _X - _root.xspeed;
   if(_X < 0)
   {
      _X = _X + 750;
   }
}
