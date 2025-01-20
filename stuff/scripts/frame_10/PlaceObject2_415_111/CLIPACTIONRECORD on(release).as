on(release){
   if(_root.colour6 == 1)
   {
      if(_root.money >= 130)
      {
         _root.colour = 6;
         _root.money = Number(_root.money - 130);
      }
   }
}
