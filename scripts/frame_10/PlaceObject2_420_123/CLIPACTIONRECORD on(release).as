on(release){
   if(_root.colour10 == 1)
   {
      if(_root.money >= 50)
      {
         _root.colour = 10;
         _root.money = Number(_root.money - 50);
      }
   }
}
