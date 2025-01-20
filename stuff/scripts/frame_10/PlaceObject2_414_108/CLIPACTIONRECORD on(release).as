on(release){
   if(_root.colour5 == 1)
   {
      if(_root.money >= 150)
      {
         _root.colour = 5;
         _root.money = Number(_root.money - 150);
      }
   }
}
