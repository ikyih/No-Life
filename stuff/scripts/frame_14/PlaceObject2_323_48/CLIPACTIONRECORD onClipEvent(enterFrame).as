onClipEvent(enterFrame){
   if(_root.flylvl - _root.flyinglevel * 10 >= 8)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
