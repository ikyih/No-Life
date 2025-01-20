onClipEvent(enterFrame){
   if(_parent._parent._currentframe == 1)
   {
      if(!(_root.corn._x < 640 and _root.corn.drag == false))
      {
         rx = _root._xmouse;
         ry = _root._ymouse;
         cx = _parent._parent._x + _parent._x + _X;
         cy = _parent._parent._y + _parent._y + _Y;
         angle = Math.atan2(ry - cy,rx - cx) / 0.017453292519943295;
         roto = angle;
         _rotation = roto;
      }
   }
   if(_parent._parent._currentframe == 2)
   {
      if(!(_root.corn._x < 640 and _root.corn.drag == false))
      {
         rx = _root._xmouse;
         ry = _root._ymouse;
         cx = _parent._parent._x + _parent._x + _X;
         cy = _parent._parent._y + _parent._y + _Y;
         angle = Math.atan2(ry - cy,rx - cx) / 0.017453292519943295;
         _rotation = - angle + 180;
      }
   }
}
