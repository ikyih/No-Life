on(release){
   if(_root.colour8 == 1)
   {
      if(_root.money >= 145)
      {
         _root.colour = 8;
         _root.money = Number(_root.money - 145);
      }
   }
}
