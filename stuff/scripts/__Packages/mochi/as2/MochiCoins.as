class mochi.as2.MochiCoins
{
   static var LOGGED_IN = "LoggedIn";
   static var LOGGED_OUT = "LoggedOut";
   static var LOGIN_SHOW = "LoginShow";
   static var LOGIN_HIDE = "LoginHide";
   static var STORE_SHOW = "StoreShow";
   static var STORE_HIDE = "StoreHide";
   static var PROFILE_SHOW = "ProfileShow";
   static var PROFILE_HIDE = "ProfileHide";
   static var PROPERTIES_SAVED = "PropertySaved";
   static var WIDGET_LOADED = "WidgetLoaded";
   static var ITEM_OWNED = "ItemOwned";
   static var ITEM_NEW = "ItemNew";
   static var STORE_ITEMS = "StoreItems";
   static var USER_INFO = "UserInfo";
   static var ERROR = "Error";
   static var IO_ERROR = "IOError";
   static var NO_USER = "NoUser";
   static var PROPERTIES_SIZE = "PropertiesSize";
   static var _dispatcher = new mochi.as2.MochiEventDispatcher();
   function MochiCoins()
   {
   }
   static function getVersion()
   {
      return mochi.as2.MochiServices.getVersion();
   }
   static function showStore(options)
   {
      mochi.as2.MochiServices.send("coins_showStore",{options:options},null,null);
   }
   static function showItem(options)
   {
      if(options == undefined || typeof options.item != "string")
      {
         trace("ERROR: showItem call must pass an Object with an item key");
         return undefined;
      }
      mochi.as2.MochiServices.send("coins_showItem",{options:options},null,null);
   }
   static function showVideo(options)
   {
      if(options == undefined || typeof options.item != "string")
      {
         trace("ERROR: showVideo call must pass an Object with an item key");
         return undefined;
      }
      mochi.as2.MochiServices.send("coins_showVideo",{options:options},null,null);
   }
   static function showLoginWidget(options)
   {
      mochi.as2.MochiServices.setContainer();
      mochi.as2.MochiServices.stayOnTop();
      mochi.as2.MochiServices.send("coins_showLoginWidget",{options:options});
   }
   static function hideLoginWidget()
   {
      mochi.as2.MochiServices.send("coins_hideLoginWidget");
   }
   static function getStoreItems()
   {
      mochi.as2.MochiServices.send("coins_getStoreItems");
   }
   static function getUserInfo()
   {
      mochi.as2.MochiServices.send("coins_getUserInfo");
   }
   static function saveUserProperties(properties)
   {
      mochi.as2.MochiServices.send("coins_saveUserProperties",properties);
   }
   static function addEventListener(eventType, delegate)
   {
      mochi.as2.MochiCoins._dispatcher.addEventListener(eventType,delegate);
   }
   static function triggerEvent(eventType, args)
   {
      mochi.as2.MochiCoins._dispatcher.triggerEvent(eventType,args);
   }
   static function removeEventListener(eventType, delegate)
   {
      mochi.as2.MochiCoins._dispatcher.removeEventListener(eventType,delegate);
   }
}
