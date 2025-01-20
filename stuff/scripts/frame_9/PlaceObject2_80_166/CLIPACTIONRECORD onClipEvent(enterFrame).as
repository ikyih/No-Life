onClipEvent(enterFrame){
   if(_root.music !== 1 and _root.music !== 0)
   {
      stopAllSounds();
      gotoAndStop(5);
   }
}
