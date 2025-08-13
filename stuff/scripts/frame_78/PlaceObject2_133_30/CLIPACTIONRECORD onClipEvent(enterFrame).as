onClipEvent(enterFrame){
   delay -= 1;
   if(delay <= 0)
   {
      game = SharedObject.getLocal("mydata");
      game.data.stalvl = _root.stalvl;
      game.data.runlvl = _root.runlvl;
      game.data.flylvl = _root.flylvl;
      game.data.swilvl = _root.swilvl;
      game.data.seed = _root.seed;
      game.data.skill = _root.skill;
      game.data.money = _root.money;
      game.data.colour = _root.colour;
      game.data.hat = _root.hat;
      game.flush();
      delay = 100;
   }
}
