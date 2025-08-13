onClipEvent(enterFrame){
   if(_root.clilvl - _root.climblevel * 10 >= 8)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
