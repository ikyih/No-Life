on(release){
   if(_root.colour4 == 1)
   {
      if(_root.money >= 70)
      {
         _root.colour = 4;
         _root.money = Number(_root.money - 70);
      }
   }
}
