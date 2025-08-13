onClipEvent(enterFrame){
   if(_root.clears == 1)
   {
      this.removeMovieClip();
   }
   if(drag == 1)
   {
      _X = Math.round(_root._xmouse / 10) * 10;
   }
   if(drag == 1)
   {
      _Y = Math.round(_root._ymouse / 10) * 10;
   }
   if(_Y < 100)
   {
      _Y = 100;
   }
}
