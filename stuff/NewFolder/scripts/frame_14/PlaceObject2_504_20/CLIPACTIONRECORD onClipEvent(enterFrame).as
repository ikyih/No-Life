onClipEvent(enterFrame){
   xspeed = _root.xspeed;
   _X = _X - xspeed;
   if(_X < -150)
   {
      _X = _X + 1140;
      _Y = 150 + Math.random() * 230;
   }
   if(this.hitTest(_root.chick))
   {
      play();
      _X = _X + 940;
      _Y = 250 + Math.random() * 130;
      _root.coins = Number(_root.coins + 1);
   }
}
