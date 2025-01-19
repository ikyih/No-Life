onClipEvent(enterFrame){
   while(this.hitTest(_root.chick._x,_root.chick._y,true))
   {
      _root.chick._y -= 1;
      _root.chick.yspeed = 0;
      _root.chick.mode = 3;
   }
   while(this.hitTest(_root.chick2._x,_root.chick2._y,true))
   {
      _root.chick2._y -= 1;
      _root.chick2.yspeed = 0;
      _root.chick2.mode = 3;
   }
   while(this.hitTest(_root.chick3._x,_root.chick3._y,true))
   {
      _root.chick3._y -= 1;
      _root.chick3.yspeed = 0;
      _root.chick3.mode = 3;
   }
   while(this.hitTest(_root.chick4._x,_root.chick4._y,true))
   {
      _root.chick4._y -= 1;
      _root.chick4.yspeed = 0;
      _root.chick4.mode = 3;
   }
}
