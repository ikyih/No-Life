onClipEvent(enterFrame){
   if(_root.go == 1)
   {
      if(_root.first !== 1 and _root.second !== 1 and _root.third !== 1)
      {
         this._xscale = clevel / level * 100;
         clevel -= 0.01;
         if(clevel <= 0)
         {
            _root.gotoAndStop(78);
         }
      }
   }
}
