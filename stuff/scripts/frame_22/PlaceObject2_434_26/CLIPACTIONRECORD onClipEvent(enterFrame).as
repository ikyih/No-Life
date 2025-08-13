onClipEvent(enterFrame){
   _Y = _Y + int(_root.yspeed);
   if(_Y > 500)
   {
      _Y = _Y - (Math.random() * 500 + 600);
      _X = Math.random() * 640;
   }
   while(_root.walls.hitTest(_X,_Y,true))
   {
      _X = Math.random() * 1000 - 200;
   }
   if(this.hitTest(_root.chick))
   {
      play();
      _Y = 501;
      _root.coins = Number(_root.coins + 1);
   }
}
