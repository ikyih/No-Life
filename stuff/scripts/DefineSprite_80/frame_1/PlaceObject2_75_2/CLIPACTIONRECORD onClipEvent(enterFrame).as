onClipEvent(enterFrame){
   if(_root.music == 0)
   {
      stopAllSounds();
      _parent.gotoAndStop(1);
   }
}
