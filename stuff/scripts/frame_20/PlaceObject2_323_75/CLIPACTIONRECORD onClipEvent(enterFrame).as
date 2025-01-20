onClipEvent(enterFrame){
   if(_root.swilvl - _root.swimlevel * 10 >= 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
