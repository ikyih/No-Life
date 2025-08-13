onClipEvent(enterFrame){
   if(where == 1)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
   _X = _X - _root.xspeed;
   if(_X < -100)
   {
      _X = Math.random() * 2000 + 640 + _root.xspeed * 100;
      where = Math.round(Math.random());
   }
   if(_X > 1000 and _X < 640 + _root.xspeed * 50)
   {
      _root.warning.play();
   }
}
