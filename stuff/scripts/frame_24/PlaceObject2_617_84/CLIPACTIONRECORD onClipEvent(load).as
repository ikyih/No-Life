onClipEvent(load){
   if(_root.race > 11)
   {
      _visible = true;
      gotoAndStop(1);
   }
   else if(_root.race < 9)
   {
      _visible = true;
      gotoAndStop(2);
   }
   else
   {
      _visible = false;
   }
}
