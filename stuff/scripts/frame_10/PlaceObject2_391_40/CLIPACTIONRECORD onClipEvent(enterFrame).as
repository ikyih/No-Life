onClipEvent(enterFrame){
   if(_root.hat - 1 >= _root.race * 3)
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
