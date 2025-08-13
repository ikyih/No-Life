onClipEvent(enterFrame){
   if(_X < -760)
   {
      _X = _X + 760;
   }
   _X = _X - _root.xspeed / 10;
}
