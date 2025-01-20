onClipEvent(enterFrame){
   if(_root.runlvl - _root.runninglevel * 10 >= 6)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
