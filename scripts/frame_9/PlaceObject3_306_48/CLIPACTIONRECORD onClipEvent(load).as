onClipEvent(load){
   if(_root.skill > 3)
   {
      gotoAndStop(1);
   }
   if(_root.skill == 3)
   {
      gotoAndStop(2);
   }
   if(_root.skill == 2)
   {
      gotoAndStop(3);
   }
   if(_root.skill == 1)
   {
      gotoAndStop(4);
   }
   if(_root.skill == 0)
   {
      gotoAndStop(5);
   }
}
