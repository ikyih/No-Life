on(press){
   if(_root.go == 0)
   {
      _root.evilstats.gotoAndStop(2);
      mx.behaviors.DepthControl.bringToFront(_root.evilstats);
   }
}
