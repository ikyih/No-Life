on(release){
   if(_root.hat4 == 1)
   {
      if(_root.money >= 100)
      {
         _root.hat = 4;
         _root.money = Number(_root.money - 100);
      }
   }
}
