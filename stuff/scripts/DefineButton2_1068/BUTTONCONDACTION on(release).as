on(release){
   if(runlvl == NaN || runlvl < 0 || runlvl > 200)
   {
      runlvl = 100;
   }
   if(flylvl == NaN || flylvl < 0 || flylvl > 200)
   {
      flylvl = 100;
   }
   if(swilvl == NaN || swilvl < 0 || swilvl > 200)
   {
      swilvl = 100;
   }
   if(clilvl == NaN || clilvl < 0 || clilvl > 200)
   {
      clilvl = 100;
   }
   prevFrame();
}
