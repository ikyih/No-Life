on(press){
   if(_root.corn._x < 1000 and _root.corn._x > 640)
   {
      _root.corn.drag = true;
      _root.seed = Number(_root.seed - 1);
   }
}
