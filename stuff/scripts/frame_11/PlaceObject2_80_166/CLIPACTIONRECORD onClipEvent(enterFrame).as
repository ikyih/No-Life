onClipEvent(enterFrame){
   if(_root.music !== 2 and _root.music !== 0)
   {
      stopAllSounds();
      gotoAndStop(2);
   }
}
