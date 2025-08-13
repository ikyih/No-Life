onClipEvent(load){
   if(_root.race > 8)
   {
      _visible = true;
      gotoAndStop(1);
   }
   else if(_root.race < 6)
   {
      _visible = true;
      gotoAndStop(2);
   }
   else
   {
      _visible = false;
   }
}
