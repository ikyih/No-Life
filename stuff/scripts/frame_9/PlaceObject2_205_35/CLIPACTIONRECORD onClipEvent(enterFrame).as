onClipEvent(enterFrame){
   while(this.hitTest(_root.chick._x + _root.chick.qwe._x,_root.chick._y + _root.chick.qwe._y + 25,true))
   {
      _root.chick._y -= 1;
      _root.chick.yspeed = 0;
   }
}
