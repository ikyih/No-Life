onClipEvent(enterFrame){
   oldx = _X;
   if(_Y > 500)
   {
      _root.nextFrame();
   }
   _root.dist = Number(_root.scoreclip.dist + _root.yspeed / 4);
   _root.scoreclip.dist = Math.round(_root.dist);
   _root.yspeed = Number(_root.yspeed + 0.002);
   _root.where = where;
   _Y = _Y + yspeed;
   _X = _X + xspeed;
   if(_Y > 250)
   {
      yspeed -= 1;
   }
   if(Key.isDown(37))
   {
      if(_root.walls.hitTest(_X - 22,_Y,true) or _root.walls.hitTest(_X + 22,_Y,true))
      {
         where = 1;
      }
   }
   if(Key.isDown(39))
   {
      if(_root.walls.hitTest(_X - 22,_Y,true) or _root.walls.hitTest(_X + 22,_Y,true))
      {
         where = 2;
      }
   }
   if(_root.walls.hitTest(_X - 22,_Y,true) or _root.walls.hitTest(_X + 22,_Y,true))
   {
      yspeed = 0;
      if(_Y > 300)
      {
         _Y = _Y - 4;
      }
   }
   else
   {
      yspeed += 1.5;
   }
   if(where == 1)
   {
      gotoAndStop(2);
      if(!_root.walls.hitTest(_X - 17,_Y,true))
      {
         _X = _X - 10;
      }
      while(_root.walls.hitTest(_X - 17,_Y,true))
      {
         _X = _X + 1;
      }
      if(!_root.walls.hitTest(_X - 25,_Y - 20,true))
      {
         _Y = _Y + yspeed;
      }
   }
   if(where == 2)
   {
      gotoAndStop(1);
      if(!_root.walls.hitTest(_X + 17,_Y,true))
      {
         _X = _X + 10;
      }
      while(_root.walls.hitTest(_X + 17,_Y,true))
      {
         _X = _X - 1;
      }
      if(!_root.walls.hitTest(_X + 25,_Y - 20,true))
      {
         _Y = _Y + yspeed;
      }
   }
   while(_root.walls.hitTest(_X,_Y - 28,true))
   {
      _Y = _Y + 1;
   }
   newx = _X;
   _rotation = _rotation + ((newx - oldx) * 10 - _rotation) / 4;
}
