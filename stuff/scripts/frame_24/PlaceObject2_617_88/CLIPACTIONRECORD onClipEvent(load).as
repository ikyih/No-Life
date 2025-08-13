onClipEvent(load){
   if(_root.race > 13)
   {
      _visible = true;
      gotoAndStop(1);
   }
   else if(_root.race < 12)
   {
      _visible = true;
      gotoAndStop(2);
   }
   else
   {
      _visible = false;
   }
}
