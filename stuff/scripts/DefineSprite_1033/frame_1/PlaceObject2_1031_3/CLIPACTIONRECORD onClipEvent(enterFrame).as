onClipEvent(enterFrame){
   if(_root.resets == 1)
   {
      chick1 = 0;
      chick2 = 0;
      chick3 = 0;
      chick4 = 0;
   }
   if(this.hitTest(_root.chick) && _root.chick._currentframe > 33)
   {
      _root.chick._x = _parent._x + _X - 15;
      _root.chick.mode = 4;
      _root.chick.gotoAndStop(32);
   }
   if(this.hitTest(_root.chick) && chick1 == 0)
   {
      chick1 = 1;
      _root.chick._x = _parent._x + _X - 15;
      _root.chick.mode = 4;
      _root.chick.gotoAndStop(32);
   }
   if(_root.chick.mode == 4)
   {
      if(!this.hitTest(_root.chick) && chick1 == 1)
      {
         chick1 = 0;
         _root.chick.mode = 0;
         _root.chick.play();
      }
   }
   if(this.hitTest(_root.chick2) && _root.chick2._currentframe > 33)
   {
      _root.chick2._x = _parent._x + _X - 15;
      _root.chick2.mode = 4;
      _root.chick2.gotoAndStop(32);
   }
   if(this.hitTest(_root.chick2) && chick1 == 0)
   {
      chick2 = 1;
      _root.chick2._x = _parent._x + _X - 15;
      _root.chick2.mode = 4;
      _root.chick2.gotoAndStop(32);
   }
   if(_root.chick2.mode == 4)
   {
      if(!this.hitTest(_root.chick2) && chick2 == 1)
      {
         chick2 = 0;
         _root.chick2.mode = 0;
         _root.chick2.play();
      }
   }
   if(this.hitTest(_root.chick3) && _root.chick3._currentframe > 33)
   {
      _root.chick3._x = _parent._x + _X - 17;
      _root.chick3.mode = 4;
      _root.chick3.gotoAndStop(32);
   }
   if(this.hitTest(_root.chick3) && chick3 == 0)
   {
      chick3 = 1;
      _root.chick3._x = _parent._x + _X - 14;
      _root.chick3.mode = 4;
      _root.chick3.gotoAndStop(32);
   }
   if(_root.chick3.mode == 4)
   {
      if(!this.hitTest(_root.chick3))
      {
         _root.chick3.mode = 0;
         _root.chick3.play();
      }
   }
   if(this.hitTest(_root.chick4) && _root.chick4._currentframe > 33)
   {
      _root.chick4._x = _parent._x + _X - 17;
      _root.chick4.mode = 4;
      _root.chick4.gotoAndStop(32);
   }
   if(this.hitTest(_root.chick4) && chick4 == 0)
   {
      chick4 = 1;
      _root.chick4._x = _parent._x + _X - 17;
      _root.chick4.mode = 4;
      _root.chick4.gotoAndStop(32);
   }
   if(_root.chick4.mode == 4)
   {
      if(!this.hitTest(_root.chick4))
      {
         _root.chick4.mode = 0;
         _root.chick4.play();
      }
   }
}
