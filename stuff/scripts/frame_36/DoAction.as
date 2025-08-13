if(first == 1)
{
   if(_root.race > 4)
   {
      position = "1st";
      results = "You have already won the prizes for this race";
   }
   else
   {
      money = Number(money + 50);
      position = "1st";
      results = "You win 50 coins and have unlocked blue paint (go to the shop to change colour)";
      game = SharedObject.getLocal("mydata");
      game.data.race = 5;
      game.flush();
      _root.race = 5;
   }
}
if(second == 1)
{
   position = "2nd";
   results = "So close yet so far. Train up your duck then come back and try again";
}
if(third == 1)
{
   position = "3rd";
   results = "At least you wern\'t last. Train up your duck then come back and try again";
}
if(forth == 1)
{
   position = "4th";
   results = "Oh no! Train up your duck then come back and try again";
}
System.security.allowDomain("server.cpmstar.com");
adclip.loadMovie("http://server.cpmstar.com/adviewas2.swf?contentspotid=2599Q1226A4F2");
