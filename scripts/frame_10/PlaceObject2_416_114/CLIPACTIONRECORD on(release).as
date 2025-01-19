on(release){
   if(_root.colour7 == 1)
   {
      if(_root.money >= 50)
      {
         _root.colour = 7;
         _root.money = Number(_root.money + 50);
      }
   }
}
