onClipEvent(enterFrame){
   if(onn == 0)
   {
      gotoAndStop(1);
      _root.freeseed = 0;
   }
   else if(onn == 1)
   {
      gotoAndStop(2);
      _root.freeseed = 1;
   }
}
