onClipEvent(enterFrame){
   if(_root.swilvl - _root.swimlevel * 10 >= 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
