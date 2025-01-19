onClipEvent(enterFrame){
   if(_root.stalvl - _root.staminalevel * 10 >= 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
