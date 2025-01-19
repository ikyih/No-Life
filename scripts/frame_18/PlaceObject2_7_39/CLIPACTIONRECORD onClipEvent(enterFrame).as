onClipEvent(enterFrame){
   xspeed = _root.xspeed;
   _X = _X + xspeed;
   if(_X < -150)
   {
      _X = _X + 940;
      _Y = Math.random() * 200;
   }
}
