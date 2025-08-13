on(press){
   if(_root.corn2._x > -360 and _root.corn2._x < 0 and _root.money > 14 and _root.freeseed == 0)
   {
      _root.corn2._x = 67;
      _root.corn2._y = 325;
      _root.corn2.xspeed = 0;
      _root.corn2.yspeed = 5;
      _root.money = Number(_root.money - 15);
   }
   if(_root.corn2._x > -360 and _root.corn2._x < 0 and _root.freeseed == 1)
   {
      _root.corn2._x = 67;
      _root.corn2._y = 325;
      _root.corn2.xspeed = 0;
      _root.corn2.yspeed = 5;
   }
}
