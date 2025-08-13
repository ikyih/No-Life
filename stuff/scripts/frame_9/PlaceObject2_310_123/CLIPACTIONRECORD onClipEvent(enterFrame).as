onClipEvent(enterFrame){
   if(_root.swilvl - _root.swimlevel * 10 >= 8)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
