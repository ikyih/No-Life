onClipEvent(enterFrame){
   if(_root.corn._x < 640)
   {
      if(_root.corn._x < _parent._x)
      {
         if(_currentframe == 1)
         {
            _parent.nextFrame();
         }
      }
   }
   else if(_root.corn2._x > 0)
   {
      if(_root.corn2._x < _parent._x)
      {
         if(_currentframe == 1)
         {
            _parent.nextFrame();
         }
      }
   }
   else if(_root._xmouse < _parent._x)
   {
      if(_currentframe == 1)
      {
         _parent.nextFrame();
      }
   }
}
