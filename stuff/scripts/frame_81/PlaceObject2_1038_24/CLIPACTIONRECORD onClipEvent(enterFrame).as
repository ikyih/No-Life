onClipEvent(enterFrame){
   if(_root.resets == 1)
   {
      delayer += 1;
   }
   if(delayer == 3)
   {
      _root.resets = 0;
      delayer = 0;
   }
}
