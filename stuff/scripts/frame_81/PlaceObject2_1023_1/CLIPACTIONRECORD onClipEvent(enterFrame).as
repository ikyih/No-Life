onClipEvent(enterFrame){
   if(_root.clears == 1)
   {
      this.removeMovieClip();
   }
   if(drag == 1)
   {
      _X = Math.round(_root._xmouse / 10) * 10;
   }
   if(drag == 1)
   {
      _Y = Math.round(_root._ymouse / 10) * 10;
   }
   if(_Y < 100)
   {
      _Y = 100;
   }
   if(_root.go == 1)
   {
      while(this.hitTest(_root.chick._x,_root.chick._y,true))
      {
         _root.chick._y -= 1;
         _root.chick.yspeed = 5;
         _root.chick.mode = 3;
      }
      while(this.hitTest(_root.chick2._x,_root.chick2._y,true))
      {
         _root.chick2._y -= 1;
         _root.chick2.yspeed = 5;
         _root.chick2.mode = 3;
      }
      while(this.hitTest(_root.chick3._x,_root.chick3._y,true))
      {
         _root.chick3._y -= 1;
         _root.chick3.yspeed = 5;
         _root.chick3.mode = 3;
      }
      while(this.hitTest(_root.chick4._x,_root.chick4._y,true))
      {
         _root.chick4._y -= 1;
         _root.chick4.yspeed = 5;
         _root.chick4.mode = 3;
      }
      if(this.hitTest(_root.chick._x - 20,_root.chick._y - 20,true))
      {
         _root.chick.mode = 1;
      }
      if(this.hitTest(_root.chick2._x - 20,_root.chick2._y - 20,true))
      {
         _root.chick2.mode = 1;
      }
   }
}
