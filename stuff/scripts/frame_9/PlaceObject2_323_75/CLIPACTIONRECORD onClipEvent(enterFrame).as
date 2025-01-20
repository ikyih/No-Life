onClipEvent(enterFrame){
   if(_root.stalvl - _root.staminalevel * 10 >= 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
