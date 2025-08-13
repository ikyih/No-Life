on(press){
   if(_root.go == 0)
   {
      _root.goodstats.gotoAndStop(2);
      mx.behaviors.DepthControl.bringToFront(_root.goodstats);
   }
}
