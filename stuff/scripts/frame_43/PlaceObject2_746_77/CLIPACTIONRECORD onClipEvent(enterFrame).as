onClipEvent(enterFrame){
   if(_root.chick.mode == 1)
   {
      while(this.hitTest(_root.chick._x,_root.chick._y + 25,true))
      {
         _root.chick._y -= 1;
         _root.chick.yspeed = 0;
      }
   }
   if(_root.chick.mode == 2)
   {
      if(this.hitTest(_root.chick._x,_root.chick._y + 25,true))
      {
         _root.chick.mode = 0;
         _root.chick.yspeed = 0;
         _root.chick.play();
      }
   }
   if(_root.chick.mode == 3)
   {
      while(this.hitTest(_root.chick._x,_root.chick._y + 25,true))
      {
         _root.chick._y -= 1;
         _root.chick.yspeed = 0;
         _root.chick.mode = 1;
         _root.chick.gotoAndStop(1);
      }
   }
   if(_root.chick2.mode == 1)
   {
      while(this.hitTest(_root.chick2._x,_root.chick2._y + 25,true))
      {
         _root.chick2._y -= 1;
         _root.chick2.yspeed = 0;
      }
   }
   if(_root.chick2.mode == 2)
   {
      if(this.hitTest(_root.chick2._x,_root.chick2._y + 25,true))
      {
         _root.chick2.mode = 0;
         _root.chick2.yspeed = 0;
         _root.chick2.play();
      }
   }
   if(_root.chick2.mode == 3)
   {
      while(this.hitTest(_root.chick2._x,_root.chick2._y + 25,true))
      {
         _root.chick2._y -= 1;
         _root.chick2.yspeed = 0;
         _root.chick2.mode = 1;
         _root.chick2.gotoAndStop(1);
      }
   }
   if(_root.chick3.mode == 1)
   {
      while(this.hitTest(_root.chick3._x,_root.chick3._y + 23,true))
      {
         _root.chick3._y -= 1;
         _root.chick3.yspeed = 0;
      }
   }
   if(_root.chick3.mode == 2)
   {
      if(this.hitTest(_root.chick3._x,_root.chick3._y + 23,true))
      {
         _root.chick3.mode = 0;
         _root.chick3.yspeed = 0;
         _root.chick3.play();
      }
   }
   if(_root.chick3.mode == 3)
   {
      while(this.hitTest(_root.chick3._x,_root.chick3._y + 23,true))
      {
         _root.chick3._y -= 1;
         _root.chick3.yspeed = 0;
         _root.chick3.mode = 1;
         _root.chick3.gotoAndStop(1);
      }
   }
   if(_root.chick4.mode == 1)
   {
      while(this.hitTest(_root.chick4._x,_root.chick4._y + 30,true))
      {
         _root.chick4._y -= 1;
         _root.chick4.yspeed = 0;
      }
   }
   if(_root.chick4.mode == 2)
   {
      if(this.hitTest(_root.chick4._x,_root.chick4._y + 30,true))
      {
         _root.chick4.mode = 0;
         _root.chick4.yspeed = 0;
         _root.chick4.play();
      }
   }
   if(_root.chick4.mode == 3)
   {
      while(this.hitTest(_root.chick4._x,_root.chick4._y + 30,true))
      {
         _root.chick4._y -= 1;
         _root.chick4.yspeed = 0;
         _root.chick4.mode = 1;
         _root.chick4.gotoAndStop(1);
      }
   }
}
