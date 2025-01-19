on(release){
   if(_root.colour3 == 1)
   {
      if(_root.money >= 10000)
      {
         _root.colour = 3;
         _root.money = Number(_root.money - 10000);
      }
   }
}
