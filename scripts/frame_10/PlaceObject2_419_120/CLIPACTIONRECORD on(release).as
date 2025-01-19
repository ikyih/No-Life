on(release){
   if(_root.colour9 == 1)
   {
      if(_root.money >= 50)
      {
         _root.colour = 9;
         _root.money = Number(_root.money - 50);
      }
   }
}
