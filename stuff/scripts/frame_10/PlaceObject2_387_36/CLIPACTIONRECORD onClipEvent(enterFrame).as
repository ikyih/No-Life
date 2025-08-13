onClipEvent(enterFrame){
   if(_root.colour == 0)
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
