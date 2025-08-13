onClipEvent(enterFrame){
   _Y = _Y + int(_root.yspeed);
   _parent.part2._y += int(_root.yspeed);
   if(_Y > 240)
   {
      _Y = _Y - 960;
      _root.part = 1;
      if(_parent.part2._currentframe < 6)
      {
         _X = _parent.part2._x + 220;
         _parent.pose = 1;
      }
      else if(_parent.part2._currentframe > 5 and _parent.part2._currentframe < 16)
      {
         _X = _parent.part2._x;
         _parent.pose = 2;
      }
      else if(_parent.part2._currentframe > 15)
      {
         _X = _parent.part2._x - 220;
         _parent.pose = 3;
      }
      if(_X < 200)
      {
         rand = Math.ceil(random(15));
      }
      else if(_X > 200)
      {
         rand = 5 + Math.ceil(random(15));
      }
      else
      {
         rand = Math.ceil(Math.random() * 20);
      }
      if(rand == 1)
      {
         gotoAndStop(1);
      }
      if(rand == 2)
      {
         gotoAndStop(2);
      }
      if(rand == 3)
      {
         gotoAndStop(3);
      }
      if(rand == 4)
      {
         gotoAndStop(4);
      }
      if(rand == 5)
      {
         gotoAndStop(5);
      }
      if(rand == 6)
      {
         gotoAndStop(6);
      }
      if(rand == 7)
      {
         gotoAndStop(7);
      }
      if(rand == 8)
      {
         gotoAndStop(8);
      }
      if(rand == 9)
      {
         gotoAndStop(9);
      }
      if(rand == 10)
      {
         gotoAndStop(10);
      }
      if(rand == 11)
      {
         gotoAndStop(11);
      }
      if(rand == 12)
      {
         gotoAndStop(12);
      }
      if(rand == 13)
      {
         gotoAndStop(13);
      }
      if(rand == 14)
      {
         gotoAndStop(14);
      }
      if(rand == 15)
      {
         gotoAndStop(15);
      }
      if(rand == 16)
      {
         gotoAndStop(16);
      }
      if(rand == 17)
      {
         gotoAndStop(17);
      }
      if(rand == 18)
      {
         gotoAndStop(18);
      }
      if(rand == 19)
      {
         gotoAndStop(19);
      }
      if(rand == 20)
      {
         gotoAndStop(20);
      }
   }
}
