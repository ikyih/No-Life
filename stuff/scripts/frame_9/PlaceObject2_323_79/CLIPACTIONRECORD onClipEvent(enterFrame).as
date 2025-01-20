onClipEvent(enterFrame){
   if(_root.stalvl - _root.staminalevel * 10 >= 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
