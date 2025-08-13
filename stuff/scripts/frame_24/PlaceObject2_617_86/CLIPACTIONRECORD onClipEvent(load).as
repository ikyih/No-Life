onClipEvent(load){
   if(_root.race > 5)
   {
      _visible = true;
      gotoAndStop(1);
   }
   else if(_root.race < 3)
   {
      _visible = true;
      gotoAndStop(2);
   }
   else
   {
      _visible = false;
   }
}
