onClipEvent(load){
   _root.total = Number(_root.swimlevel) + Number(_root.staminalevel) + Number(_root.runninglevel) + Number(_root.flyinglevel);
   _root.totalx = Math.round((Number(_root.swilvl) + Number(_root.stalvl) + Number(_root.runlvl) + Number(_root.flylvl)) / 2);
   if(_root.total > 499)
   {
      _root.rank = "Duck God";
   }
   else if(_root.total > 399)
   {
      _root.rank = "King of Ducks";
   }
   else if(_root.total > 299)
   {
      _root.rank = "Professional";
   }
   else if(_root.total > 199)
   {
      _root.rank = "Speedy Duck";
   }
   else if(_root.total > 159)
   {
      _root.rank = "Amateur";
   }
   else if(_root.total > 99)
   {
      _root.rank = "Trainee";
   }
   else if(_root.total > 49)
   {
      _root.rank = "Beginner";
   }
   else if(_root.total > 19)
   {
      _root.rank = "Duckling";
   }
   else
   {
      _root.rank = "Baby Duckling";
   }
   if(_root.total499)
   {
      _root.rank2 = "N/A";
   }
   else if(_root.total > 399)
   {
      _root.rank2 = "Duck God";
   }
   else if(_root.total > 299)
   {
      _root.rank2 = "King of Ducks";
   }
   else if(_root.total > 199)
   {
      _root.rank2 = "Professional";
   }
   else if(_root.total > 159)
   {
      _root.rank2 = "Speedy Duck";
   }
   else if(_root.total > 99)
   {
      _root.rank2 = "Amateur";
   }
   else if(_root.total > 49)
   {
      _root.rank2 = "Trainee";
   }
   else if(_root.total > 19)
   {
      _root.rank2 = "Beginner";
   }
   else
   {
      _root.rank2 = "Duckling";
   }
   if(_root.stalvl > _root.flylvl and _root.stalvl > _root.runlvl and _root.stalvl > _root.swilvl)
   {
      _root.type = "Energetic";
   }
   else if(_root.swilvl > _root.flylvl and _root.swilvl > _root.runlvl and _root.swilvl > _root.stalvl)
   {
      _root.type = "Swimmer";
   }
   else if(_root.flylvl > _root.stalvl and _root.flylvl > _root.runlvl and _root.flylvl > _root.swilvl)
   {
      _root.type = "Pilot";
   }
   else if(_root.runlvl > _root.flylvl and _root.runlvl > _root.stalvl and _root.runlvl > _root.swilvl)
   {
      _root.type = "Sprinter";
   }
   else
   {
      _root.type = "Neutral";
   }
}
