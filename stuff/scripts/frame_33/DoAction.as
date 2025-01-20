if(first == 1)
{
   if(_root.colour5 == 1)
   {
      position = "You came first!";
      results = "You have already won the prizes for this race";
   }
   else
   {
      money = Number(money + 100);
      position = "You came first!";
      results = "You win 100 coins and have unlocked the colour \"Boring Grey\" (you can purchase this in the shop for 50 coins)";
      game = SharedObject.getLocal("mydata");
      game.data.colour5 = 1;
      game.flush();
   }
}
if(second == 1)
{
   position = "You came second!";
   results = "So close yet so far. Train up your duck then come back and try again";
}
if(third == 1)
{
   position = "You came third";
   results = "At least you wern\'t last. Train up your duck then come back and try again";
}
if(forth == 1)
{
   position = "You came last";
   results = "Oh no! Train up your duck then come back and try again";
}
mochi.as2.MochiAd.showClickAwayAd({clip:adclip,id:"4bf9d0dc577d3781"});
