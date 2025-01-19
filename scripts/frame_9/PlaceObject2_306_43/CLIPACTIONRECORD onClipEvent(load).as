onClipEvent(load){
   if(_root.seed > 3)
   {
      gotoAndStop(1);
   }
   if(_root.seed == 3)
   {
      gotoAndStop(2);
   }
   if(_root.seed == 2)
   {
      gotoAndStop(3);
   }
   if(_root.seed == 1)
   {
      gotoAndStop(4);
   }
   if(_root.seed == 0)
   {
      gotoAndStop(5);
   }
}
