function Lbar()
{
   loadcheat = Number(loadcheat + 100);
   _root.spinamount = getBytesLoaded() / getBytesTotal() * 100;
   txtx = Math.ceil((getBytesLoaded() / getBytesTotal() * 100 + loadcheat) / 2) + "%";
   txtxtx.text = Math.ceil(getBytesLoaded() / 1000) + "KB/" + Math.ceil(getBytesTotal() / 1000) + "KB loaded";
   if(txtx == "100%" or Math.ceil((getBytesLoaded() / getBytesTotal() * 100 + loadcheat) / 2) > 99)
   {
      txtx = "";
      playb._visible = true;
      clearInterval(LoaderInt);
   }
}
stop();
loadcheat = 1;
LoaderInt = setInterval(Lbar,10);
