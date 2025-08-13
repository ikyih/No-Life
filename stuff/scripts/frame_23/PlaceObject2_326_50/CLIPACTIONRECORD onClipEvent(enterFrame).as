onClipEvent(enterFrame){
   this._xscale = _root.climblevel * 2;
   _root.climblevel = Math.floor(_root.clilvl / 10);
}
