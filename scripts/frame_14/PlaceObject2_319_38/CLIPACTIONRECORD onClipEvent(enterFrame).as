onClipEvent(enterFrame){
   this._xscale = _root.flyinglevel * 1.16;
   _root.flyinglevel = Math.floor(_root.flylvl / 10);
}
