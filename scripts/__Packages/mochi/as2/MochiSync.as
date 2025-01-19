class mochi.as2.MochiSync
{
   var _syncContainer;
   static var SYNC_REQUEST = "SyncRequest";
   static var SYNC_PROPERTY = "UpdateProperty";
   function MochiSync()
   {
      this._syncContainer = {};
   }
   function getProp(name)
   {
      return this._syncContainer[name];
   }
   function setProp(name, value)
   {
      if(this._syncContainer[name] == value)
      {
         return undefined;
      }
      this._syncContainer[name] = value;
      mochi.as2.MochiServices.send("sync_propUpdate",{name:name,value:value});
   }
   function triggerEvent(eventType, args)
   {
      switch(eventType)
      {
         case mochi.as2.MochiSync.SYNC_REQUEST:
            mochi.as2.MochiServices.send("sync_syncronize",this._syncContainer);
            break;
         case mochi.as2.MochiSync.SYNC_PROPERTY:
            this._syncContainer[args.name] = args.value;
      }
   }
}
