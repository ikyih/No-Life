onClipEvent(enterFrame){
   if(_root.colour >= _root.race)
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
