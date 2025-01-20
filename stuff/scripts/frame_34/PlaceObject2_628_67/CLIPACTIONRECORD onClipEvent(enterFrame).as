onClipEvent(enterFrame){
   if(this.hitTest(_root.chick) and one == 0)
   {
      one = 1;
      if(_root.first == 0)
      {
         _root.first = 1;
      }
      else if(_root.second == 0)
      {
         _root.second = 1;
      }
      else if(_root.third == 0)
      {
         _root.third = 1;
      }
      else if(_root.forth == 0)
      {
         _root.forth = 1;
         _root.nextFrame();
      }
   }
   if(this.hitTest(_root.chick2) and two == 0)
   {
      two = 1;
      if(_root.first == 0)
      {
         _root.first = 2;
      }
      else if(_root.second == 0)
      {
         _root.second = 2;
      }
      else if(_root.third == 0)
      {
         _root.third = 2;
      }
      else if(_root.forth == 0)
      {
         _root.forth = 2;
         _root.nextFrame();
      }
   }
   if(this.hitTest(_root.chick3) and thr == 0)
   {
      thr = 1;
      if(_root.first == 0)
      {
         _root.first = 3;
      }
      else if(_root.second == 0)
      {
         _root.second = 3;
      }
      else if(_root.third == 0)
      {
         _root.third = 3;
      }
      else if(_root.forth == 0)
      {
         _root.forth = 3;
         _root.nextFrame();
      }
   }
   if(this.hitTest(_root.chick4) and fou == 0)
   {
      fou = 1;
      if(_root.first == 0)
      {
         _root.first = 4;
      }
      else if(_root.second == 0)
      {
         _root.second = 4;
      }
      else if(_root.third == 0)
      {
         _root.third = 4;
      }
      else if(_root.forth == 0)
      {
         _root.forth = 4;
         _root.nextFrame();
      }
   }
}
