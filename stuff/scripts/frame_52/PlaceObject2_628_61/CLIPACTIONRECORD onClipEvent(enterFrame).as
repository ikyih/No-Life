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
         _root.nextFrame();
      }
   }
}
