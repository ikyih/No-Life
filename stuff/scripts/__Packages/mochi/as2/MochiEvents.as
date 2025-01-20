class mochi.as2.MochiEvents
{
   static var gameStart;
   static var levelStart;
   static var ACHIEVEMENT_RECEIVED = "AchievementReceived";
   static var ALIGN_TOP_LEFT = "ALIGN_TL";
   static var ALIGN_TOP = "ALIGN_T";
   static var ALIGN_TOP_RIGHT = "ALIGN_TR";
   static var ALIGN_LEFT = "ALIGN_L";
   static var ALIGN_CENTER = "ALIGN_C";
   static var ALIGN_RIGHT = "ALIGN_R";
   static var ALIGN_BOTTOM_LEFT = "ALIGN_BL";
   static var ALIGN_BOTTOM = "ALIGN_B";
   static var ALIGN_BOTTOM_RIGHT = "ALIGN_BR";
   static var FORMAT_SHORT = "ShortForm";
   static var FORMAT_LONG = "LongForm";
   static var _dispatcher = new mochi.as2.MochiEventDispatcher();
   function MochiEvents()
   {
   }
   static function getVersion()
   {
      return mochi.as2.MochiServices.getVersion();
   }
   static function startSession(achievementID)
   {
      mochi.as2.MochiServices.send("events_beginSession",{achievementID:achievementID},null,null);
   }
   static function trigger(kind, obj)
   {
      if(obj == undefined)
      {
         obj = {};
      }
      else if(obj.kind != undefined)
      {
         trace("WARNING: optional arguements package contains key \'id\', it will be overwritten");
         obj.kind = kind;
      }
      mochi.as2.MochiServices.send("events_triggerEvent",{eventObject:obj},null,null);
   }
   static function setNotifications(clip, style)
   {
      var _loc2_ = {};
      for(var _loc3_ in style)
      {
         _loc2_[_loc3_] = style[_loc3_];
      }
      _loc2_.clip = clip;
      mochi.as2.MochiServices.send("events_setNotifications",_loc2_,null,null);
   }
   static function addEventListener(eventType, thisObject, thatObject)
   {
      mochi.as2.MochiEvents._dispatcher.addEventListener(eventType,thisObject,thatObject);
   }
   static function triggerEvent(eventType, args)
   {
      mochi.as2.MochiEvents._dispatcher.triggerEvent(eventType,args);
   }
   static function removeEventListener(eventType, thisObject, thatObject)
   {
      mochi.as2.MochiEvents._dispatcher.removeEventListener(eventType,thisObject,thatObject);
   }
   static function startGame()
   {
      mochi.as2.MochiEvents.gameStart = new Date().getTime();
      mochi.as2.MochiEvents.trigger("start_game");
   }
   static function endGame()
   {
      var _loc1_ = new Date().getTime() - mochi.as2.MochiEvents.gameStart;
      mochi.as2.MochiEvents.trigger("end_game",{time:_loc1_});
   }
   static function startLevel()
   {
      mochi.as2.MochiEvents.levelStart = new Date().getTime();
      mochi.as2.MochiEvents.trigger("start_level");
   }
   static function endLevel()
   {
      var _loc1_ = new Date().getTime() - mochi.as2.MochiEvents.levelStart;
      mochi.as2.MochiEvents.trigger("end_level",{time:_loc1_});
   }
}
