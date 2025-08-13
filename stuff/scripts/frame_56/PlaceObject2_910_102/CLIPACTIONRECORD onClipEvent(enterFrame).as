onClipEvent(enterFrame){
   while(this.hitTest(_root.chick))
   {
      _root.chick._x -= 1;
   }
   while(this.hitTest(_root.chick2))
   {
      _root.chick2._x -= 1;
   }
   while(this.hitTest(_root.chick3))
   {
      _root.chick3._x -= 1;
   }
   while(this.hitTest(_root.chick4))
   {
      _root.chick4._x -= 1;
   }
}
