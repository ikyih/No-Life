onClipEvent(enterFrame){
   if(_root.chick.mode == 2 and _root.chick._currentframe < 22)
   {
      _root.chick.play();
   }
   if(_root.chick2.mode == 2 and _root.chick._currentframe < 22)
   {
      _root.chick.play();
   }
   if(_root.chick3.mode == 2 and _root.chick._currentframe < 22)
   {
      _root.chick.play();
   }
   if(_root.chick4.mode == 2 and _root.chick._currentframe < 22)
   {
      _root.chick.play();
   }
   if(_root.race == NaN)
   {
      _root.race = 0;
   }
   if(_root.clilvl > _root.maxi * 10)
   {
      _root.clilvl = _root.maxi * 10;
      _root.maxwarning.gotoAndStop(2);
   }
   if(_root.stalvl > _root.maxi * 10)
   {
      _root.stalvl = _root.maxi * 10;
      _root.maxwarning.gotoAndStop(2);
   }
   if(_root.runlvl > _root.maxi * 10)
   {
      _root.runlvl = _root.maxi * 10;
      _root.maxwarning.gotoAndStop(2);
   }
   if(_root.flylvl > _root.maxi * 10)
   {
      _root.flylvl = _root.maxi * 10;
      _root.maxwarning.gotoAndStop(2);
   }
   if(_root.swilvl > _root.maxi * 10)
   {
      _root.swilvl = _root.maxi * 10;
      _root.maxwarning.gotoAndStop(2);
   }
   delay -= 1;
   if(delay <= 0)
   {
      game = SharedObject.getLocal("mydata");
      game.data.maxi = _root.maxi;
      game.data.maxmaxi = _root.maxmaxi;
      game.data.clilvl = _root.clilvl;
      game.data.namee = _root.namee;
      if(game.data.race == NaN)
      {
         game.data.race = 0;
      }
      game.flush();
      delay = 100;
   }
}
