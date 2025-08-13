on(press){
   if(_root.corn._x < 1000 and _root.corn._x > 640 and _root.money > 0 and _root.freeseed == 0)
   {
      _root.corn._x = 573;
      _root.corn._y = 325;
      _root.corn.xspeed = 0;
      _root.corn.yspeed = 5;
      _root.money = Number(_root.money - 1);
   }
   if(_root.corn._x < 1000 and _root.corn._x > 640 and _root.freeseed == 1)
   {
      _root.corn._x = 573;
      _root.corn._y = 325;
      _root.corn.xspeed = 0;
      _root.corn.yspeed = 5;
   }
}
