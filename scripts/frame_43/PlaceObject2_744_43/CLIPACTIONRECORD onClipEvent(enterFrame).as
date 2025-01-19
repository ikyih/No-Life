onClipEvent(enterFrame){
   if(this.hitTest(_root.chick))
   {
      _root.colour = 6;
      _root.gotoAndStop(9);
   }
}
