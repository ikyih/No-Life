onClipEvent(enterFrame){
   xspeed = _root.xspeed;
   _X = _X - xspeed;
   if(_X < -150)
   {
      _X = _X + 940;
      _Y = 150 + Math.random() * 230;
   }
   if(this.hitTest(_root.chick))
   {
      play();
      _X = _X + 940;
      _Y = 150 + Math.random() * 230;
      _root.coins = Number(_root.coins + 1);
   }
}
