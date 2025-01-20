onClipEvent(enterFrame){
   if(_root.flylvl - _root.flyinglevel * 10 >= 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
