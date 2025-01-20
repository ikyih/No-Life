onClipEvent(enterFrame){
   if(_root.runlvl - _root.runninglevel * 10 >= 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
