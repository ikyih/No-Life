class mochi.as2.MochiEventDispatcher
{
   var eventTable;
   function MochiEventDispatcher()
   {
      this.eventTable = {};
   }
   function buildDelegate(thisObject, thatObject)
   {
      var _loc2_ = {thisObject:thisObject,thatObject:thatObject};
      if(thatObject != undefined)
      {
         var funct = typeof thatObject != "string" ? thatObject : thisObject[thatObject];
         _loc2_.delegate = function(args)
         {
            funct.call(thisObject,args);
         };
      }
      else
      {
         _loc2_.delegate = thisObject;
      }
      return _loc2_;
   }
   function compareDelegate(d_A, d_B)
   {
      if(d_A.thisObject != d_B.thisObject || d_A.thatObject != d_B.thatObject)
      {
         return false;
      }
      return true;
   }
   function addEventListener(event, thisObject, thatObject)
   {
      this.removeEventListener(event,thisObject,thatObject);
      this.eventTable[event].push(this.buildDelegate(thisObject,thatObject));
   }
   function removeEventListener(event, thisObject, thatObject)
   {
      var _loc3_ = this.buildDelegate(thisObject,thatObject);
      if(this.eventTable[event] == undefined)
      {
         this.eventTable[event] = [];
         return undefined;
      }
      for(var _loc4_ in this.eventTable[event])
      {
         if(this.compareDelegate(this.eventTable[event][_loc4_],_loc3_))
         {
            this.eventTable[event].splice(Number(_loc4_),1);
         }
      }
   }
   function triggerEvent(event, args)
   {
      if(this.eventTable[event] == undefined)
      {
         return undefined;
      }
      for(var _loc4_ in this.eventTable[event])
      {
         this.eventTable[event][_loc4_].delegate(args);
      }
   }
}
