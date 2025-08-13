onClipEvent(enterFrame){
   if(_root.clilvl - _root.climblevel * 10 >= 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
