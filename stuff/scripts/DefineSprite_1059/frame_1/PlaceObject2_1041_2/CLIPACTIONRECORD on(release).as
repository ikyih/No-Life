on(release){
   var newdepth = this._parent._parent.block._parent.getNextHighestDepth();
   var newname = "copy" + newdepth;
   var prevname = "copy" + (newdepth - 1);
   if(this._parent._parent.block._parent[prevname] == undefined)
   {
      this._parent._parent.block._parent[prevname] = this._parent._parent.block;
   }
   this._parent._parent.block.duplicateMovieClip(newname,newdepth);
   this._parent._parent.block._parent[newname]._x = -500;
   this._parent._parent.block._parent[newname]._y = -500;
   this._parent._parent.block._parent[newname].drag = 1;
   mx.behaviors.DepthControl.bringToFront(this._parent);
}
