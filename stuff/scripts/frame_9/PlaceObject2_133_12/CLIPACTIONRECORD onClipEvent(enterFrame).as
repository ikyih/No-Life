onClipEvent(enterFrame){
   if(_root.staminalevel > 49)
   {
      _root.gameShedAchievement.ActivateAchievement(2450399626);
   }
   _root.total = Number(_root.swimlevel) + Number(_root.staminalevel) + Number(_root.runninglevel) + Number(_root.flyinglevel);
   if(_root.total > 599)
   {
      _root.rank = "Duck God";
   }
   else if(_root.total > 499)
   {
      _root.rank = "King of Ducks";
   }
   else if(_root.total > 399)
   {
      _root.rank = "Professional";
   }
   else if(_root.total > 299)
   {
      _root.rank = "Speedy Duck";
   }
   else if(_root.total > 199)
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
}
