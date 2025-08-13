onClipEvent(enterFrame){
   if(_root.resets == 1)
   {
      jump1 = 0;
      jump2 = 0;
      jump3 = 0;
      jump4 = 0;
   }
   if(this.hitTest(_root.chick))
   {
      if(_root.chick._currentframe > 1 && _root.chick._currentframe < 5)
      {
         if(jump1 == 0)
         {
            _root.chick._y -= 2;
            _root.chick.gotoAndPlay(13);
            jump1 = 1;
            _root.chick.mode = 0;
         }
      }
   }
   if(this.hitTest(_root.chick2))
   {
      if(_root.chick2._currentframe > 1 && _root.chick2._currentframe < 5)
      {
         if(jump2 == 0)
         {
            _root.chick2._y -= 2;
            _root.chick2.gotoAndPlay(13);
            jump2 = 1;
            _root.chick2.mode = 0;
         }
      }
   }
   if(this.hitTest(_root.chick3))
   {
      if(_root.chick3._currentframe > 1 && _root.chick3._currentframe < 5)
      {
         if(jump3 == 0)
         {
            _root.chick3._y -= 2;
            _root.chick3.gotoAndPlay(13);
            jump3 = 1;
            _root.chick3.mode = 0;
         }
      }
   }
   if(this.hitTest(_root.chick4))
   {
      if(_root.chick4._currentframe > 1 && _root.chick4._currentframe < 5)
      {
         if(jump4 == 0)
         {
            _root.chick4._y -= 2;
            _root.chick4.gotoAndPlay(13);
            jump4 = 1;
            _root.chick4.mode = 0;
         }
      }
   }
}
