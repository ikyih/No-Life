onClipEvent(enterFrame){
   if(this.hitTest(_root.chick))
   {
      if(_root.chick.mode !== 2 and _root.chick._currentframe < 13)
      {
         _root.chick.mode = 2;
         _root.chick.gotoAndStop(23);
         _root.chick._x -= 50;
      }
   }
   if(this.hitTest(_root.chick2))
   {
      if(_root.chick2.mode !== 2 and _root.chick2._currentframe < 13)
      {
         _root.chick2.mode = 2;
         _root.chick2.gotoAndStop(23);
      }
   }
   if(this.hitTest(_root.chick3))
   {
      if(_root.chick3.mode !== 2 and _root.chick3._currentframe < 13)
      {
         _root.chick3.mode = 2;
         _root.chick3.gotoAndStop(23);
      }
   }
   if(this.hitTest(_root.chick4))
   {
      if(_root.chick4.mode !== 2 and _root.chick4._currentframe < 13)
      {
         _root.chick4.mode = 2;
         _root.chick4.gotoAndStop(23);
      }
   }
}
