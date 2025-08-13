onClipEvent(load){
   if(_root.race > 5)
   {
      _visible = true;
      gotoAndStop(1);
   }
   if(_root.race < 5)
   {
      _visible = true;
      gotoAndStop(2);
   }
   if(_root.race == 5)
   {
      _visible = false;
   }
}
