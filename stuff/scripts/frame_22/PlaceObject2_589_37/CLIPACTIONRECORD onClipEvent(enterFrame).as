onClipEvent(enterFrame){
   _X = _X + (_root.chick._x - _X) / 200;
   _root.shad._x = _X;
   _root.bg._x = _X;
   _root.scoreclip._x = _X;
   _root.energy._x = _X;
}
