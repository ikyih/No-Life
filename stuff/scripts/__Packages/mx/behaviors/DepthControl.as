class mx.behaviors.DepthControl extends Object
{
   function DepthControl()
   {
      super();
   }
   static function sendToBack(target)
   {
      var _loc2_ = false;
      while(_loc2_ == false)
      {
         mx.behaviors.DepthControl.sendBackward(target);
         _loc2_ = target == mx.behaviors.DepthControl.getInstanceAtLowest(target._parent);
      }
   }
   static function bringToFront(target)
   {
      var _loc2_ = false;
      while(_loc2_ == false)
      {
         mx.behaviors.DepthControl.bringForward(target);
         _loc2_ = target == mx.behaviors.DepthControl.getInstanceAtHighest(target._parent);
      }
   }
   static function sendBackward(target)
   {
      var _loc2_ = mx.behaviors.DepthControl.trackDepths(target._parent);
      if(target != mx.behaviors.DepthControl.getInstanceAtLowest(target._parent))
      {
         target.swapDepths(mx.behaviors.DepthControl.getInstanceLowerThan(target));
      }
   }
   static function bringForward(target)
   {
      if(target != mx.behaviors.DepthControl.getInstanceAtHighest(target._parent))
      {
         target.swapDepths(mx.behaviors.DepthControl.getInstanceHigherThan(target));
      }
   }
   static function trackDepths(mcParent)
   {
      var _loc4_ = [];
      for(var _loc5_ in mcParent)
      {
         if(typeof mcParent[_loc5_] == "movieclip")
         {
            _loc4_.push({mc:mcParent[_loc5_],depth:mcParent[_loc5_].getDepth()});
         }
      }
      _loc4_.sort(mx.behaviors.DepthControl.orderFunc);
      return _loc4_;
   }
   static function orderFunc(a, b)
   {
      var _loc2_ = Number(a.depth);
      var _loc1_ = Number(b.depth);
      if(_loc2_ > _loc1_)
      {
         return -1;
      }
      if(_loc1_ > _loc2_)
      {
         return 1;
      }
      return 0;
   }
   static function getInstanceAtLowest(targetParent)
   {
      var _loc1_ = mx.behaviors.DepthControl.trackDepths(targetParent);
      return _loc1_[_loc1_.length - 1].mc;
   }
   static function getInstanceAtHighest(targetParent)
   {
      var _loc1_ = mx.behaviors.DepthControl.trackDepths(targetParent);
      return _loc1_[0].mc;
   }
   static function getInstanceLowerThan(target)
   {
      var _loc2_ = mx.behaviors.DepthControl.trackDepths(target._parent);
      var _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].mc == target)
         {
            break;
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc2_[_loc1_ + 1].mc;
   }
   static function getInstanceHigherThan(target)
   {
      var _loc2_ = mx.behaviors.DepthControl.trackDepths(target._parent);
      var _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].mc == target)
         {
            break;
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc2_[_loc1_ - 1].mc;
   }
}
