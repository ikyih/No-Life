onClipEvent(enterFrame){
   _root.xspeed = xspeed;
   _X = _X - xspeed;
   if(_X < 100)
   {
      play();
   }
}
