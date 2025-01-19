if(_url.indexOf("arcadetown.com") == -1 && _url.indexOf("heavygames.com") == -1)
{
   mochi.as2.MochiAd.showPreGameAd({id:"4bf9d0dc577d3781",res:"640x480"});
   loads = 0;
}
else
{
   stop();
}
web = _url;
