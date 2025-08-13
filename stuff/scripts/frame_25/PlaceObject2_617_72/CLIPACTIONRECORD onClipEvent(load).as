onClipEvent(load){
   if(_root.race > 0)
   {
      _visible = true;
      gotoAndStop(1);
   }
   if(_root.race == 0)
   {
      _visible = false;
   }
}
