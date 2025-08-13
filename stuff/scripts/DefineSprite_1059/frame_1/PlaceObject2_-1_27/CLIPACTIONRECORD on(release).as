on(release){
   var newdepth = this._parent._parent.tree._parent.getNextHighestDepth();
   var newname = "copy" + newdepth;
   var prevname = "copy" + (newdepth - 1);
   if(this._parent._parent.tree._parent[prevname] == undefined)
   {
      this._parent._parent.tree._parent[prevname] = this._parent._parent.block3;
   }
   this._parent._parent.tree.duplicateMovieClip(newname,newdepth);
   this._parent._parent.tree._parent[newname]._x = -500;
   this._parent._parent.tree._parent[newname]._y = -500;
   this._parent._parent.tree._parent[newname].drag = 1;
   mx.behaviors.DepthControl.bringToFront(this._parent);
}
