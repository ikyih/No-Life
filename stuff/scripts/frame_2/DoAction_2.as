_root.music = 999;
daytime = 1;
game = SharedObject.getLocal("mydata");
if(game.data.stalvl == undefined)
{
   stalvl = 0;
}
else
{
   stalvl = game.data.stalvl;
}
if(game.data.clilvl == undefined)
{
   clilvl = 0;
}
else
{
   clilvl = game.data.clilvl;
}
if(game.data.runlvl == undefined)
{
   runlvl = 0;
}
else
{
   runlvl = game.data.runlvl;
}
if(game.data.flylvl == undefined)
{
   flylvl = 0;
}
else
{
   flylvl = game.data.flylvl;
}
if(game.data.swilvl == undefined)
{
   swilvl = 0;
}
else
{
   swilvl = game.data.swilvl;
}
if(game.data.money == undefined)
{
   money = 0;
}
else
{
   money = game.data.money;
}
if(_root.money == "NaN")
{
   money = 0;
}
if(game.data.race == undefined)
{
   race = 0;
}
else
{
   race = game.data.race;
}
if(game.data.maxi == undefined)
{
   maxi = 20;
}
else
{
   maxi = game.data.maxi;
}
if(game.data.maxmaxi == undefined)
{
   maxmaxi = 30;
}
else
{
   maxmaxi = game.data.maxmaxi;
}
if(game.data.colour == undefined)
{
   colour = 0;
}
else
{
   colour = game.data.colour;
}
if(game.data.hat == undefined)
{
   hat = 0;
}
else
{
   hat = game.data.hat;
}
if(game.data.namee != undefined)
{
   namee = game.data.namee;
   gotoAndStop(83);
}
if(_root.race == NaN)
{
   _root.race = 0;
}
