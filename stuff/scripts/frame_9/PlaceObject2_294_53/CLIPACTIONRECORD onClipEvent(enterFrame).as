onClipEvent(enterFrame){
   if(space == 1)
   {
      _Y = _Y + (240 - _Y) / 20;
      _X = _X + (320 - _X) / 20;
   }
   if(space == 2)
   {
      _Y = _Y + (240 - _Y) / 20;
      _X = _X + (960 - _X) / 20;
   }
   if(space == 3)
   {
      _Y = _Y + (720 - _Y) / 20;
      _X = _X + (320 - _X) / 20;
   }
   if(space == 4)
   {
      _Y = _Y + (720 - _Y) / 20;
      _X = _X + (960 - _X) / 20;
   }
}
