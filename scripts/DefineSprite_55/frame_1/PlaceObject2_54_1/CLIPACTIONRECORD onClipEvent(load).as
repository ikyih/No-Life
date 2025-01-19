onClipEvent(load){
   if(_parent._parent._currentframe == 1 or _parent._parent._parent._parent._parent._name == "chick" or _parent._parent._parent._parent._name == "chick" or _parent._parent._parent._name == "chick" or _parent._parent._name == "chick" or _parent._name == "chick")
   {
      if(_root.hat == 0)
      {
         gotoAndStop(1);
      }
      else if(_root.hat == 1)
      {
         gotoAndStop(2);
      }
      else if(_root.hat == 2)
      {
         gotoAndStop(3);
      }
      else if(_root.hat == 3)
      {
         gotoAndStop(4);
      }
      else if(_root.hat == 4)
      {
         gotoAndStop(5);
      }
      else if(_root.hat == 5)
      {
         gotoAndStop(6);
      }
   }
   else
   {
      gotoAndStop(1);
   }
}
