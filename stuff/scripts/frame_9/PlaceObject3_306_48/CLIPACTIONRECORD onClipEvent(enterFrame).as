onClipEvent(enterFrame){
   if(_root.skill > 3)
   {
      gotoAndStop(1);
   }
   if(_root.skill == 3)
   {
      gotoAndStop(2);
   }
   if(_root.skill == 2)
   {
      gotoAndStop(3);
   }
   if(_root.skill == 1)
   {
      gotoAndStop(4);
   }
   if(_root.skill == 0)
   {
      gotoAndStop(5);
   }
   if(_root.corn.drag == false)
   {
      while(this.hitTest(_root.corn._x,_root.corn._y,true))
      {
         _root.corn._x += 1;
         _root.corn.xspeed += 1;
      }
   }
   if(_root.corn2.drag == false)
   {
      while(this.hitTest(_root.corn2._x,_root.corn2._y,true))
      {
         _root.corn2._x += 1;
         _root.corn2.xspeed += 1;
      }
   }
}
