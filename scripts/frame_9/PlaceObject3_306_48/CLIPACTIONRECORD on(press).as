on(press){
   if(_root.corn2._x > -360 and _root.corn2._x < 0)
   {
      _root.corn2.drag = true;
      _root.skill = Number(_root.skill - 1);
   }
}
