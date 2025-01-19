onClipEvent(enterFrame){
   rx = _root._xmouse;
   ry = _root._ymouse;
   cx = _X;
   cy = _Y;
   angle = Math.atan2(ry - cy,rx - cx) / 0.017453292519943295;
   roto = angle;
   _rotation = roto;
   if(_rotation < -110)
   {
      _rotation = -110;
   }
   if(_rotation > 90)
   {
      _rotation = 90;
   }
}
