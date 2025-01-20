on(release){
   if(_root.colour2 == 1)
   {
      if(_root.money >= 50)
      {
         _root.colour = 2;
         _root.money = Number(_root.money - 50);
      }
   }
}
