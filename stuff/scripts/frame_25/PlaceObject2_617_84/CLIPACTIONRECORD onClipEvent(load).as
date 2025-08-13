onClipEvent(load){
   if(_root.race > 2)
   {
      _visible = true;
      gotoAndStop(1);
   }
   if(_root.race < 2)
   {
      _visible = true;
      gotoAndStop(2);
   }
   if(_root.race == 2)
   {
      _visible = false;
   }
}
