if(first == 1)
{
   if(_root.race > 13)
   {
      position = "1st";
      results = "You have already won the prizes for this race";
   }
   else
   {
      menub.gotoAndStop(2);
      money = Number(money + 50);
      position = "1st";
      maxmaxi = Number(maxmaxi + 50);
      results = "You won! You are now the champion, click next to see your prizes (there are a lot)";
      game = SharedObject.getLocal("mydata");
      game.data.race = 14;
      _root.race = 14;
      game.flush();
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
