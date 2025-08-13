onClipEvent(enterFrame){
   if(_root.hat == 0)
   {
      _alpha = 50;
      this.useHandCursor = false;
   }
   else
   {
      _alpha = 100;
      this.useHandCursor = true;
   }
}
