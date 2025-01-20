on(release){
   if(_root.money > 0)
   {
      _root.seed = Number(_root.seed + 1);
      _root.money = Number(_root.money - 1);
   }
}
