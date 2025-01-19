function Lbar()
{
   if(getBytesLoaded() >= getBytesTotal() and _root.loads !== 0)
   {
      play();
      clearInterval(LoaderInt);
   }
   _root.spinamount = getBytesLoaded() / getBytesTotal() * 100;
   txtx.text = Math.ceil(getBytesLoaded() / getBytesTotal() * 100) + "%";
   txtxtx.text = Math.ceil(getBytesLoaded() / 1000) + "KB/" + Math.ceil(getBytesTotal() / 1000) + "KB loaded";
}
LoaderInt = setInterval(Lbar,10);
