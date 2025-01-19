onClipEvent(enterFrame){
   if(_parent._parent._x < 480 or _parent._parent._currentframe == 2)
   {
      if(_parent._parent._x > 160 or _parent._parent._currentframe == 1)
      {
         num = Math.round(Math.random() * 40);
         if(num == 5)
         {
            _parent.play();
            num = 0;
         }
         if(_root.corn._x < 640)
         {
            _parent.play();
            num = 0;
         }
         if(_root.corn2._x > 0)
         {
            _parent.play();
            num = 0;
         }
      }
   }
}
