on(release){
   if(_root.money > 49 and _root.maxmaxi > _root.maxi)
   {
      _root.money = Number(_root.money - 50);
      _root.maxi = Number(_root.maxi + 10);
   }
   else if(_root.money < 50)
   {
      _root.info = "You don\'t have enough money! You need " + Number(50 - _root.money) + " more coins";
   }
   else
   {
      _root.info = "You can\'t upgrade your max level any more at the moment. Win races to unlock higher max levels";
   }
}
