class mochi.as2.MochiServices
{
   var isLoading;
   var startTime;
   var waitInterval;
   var _callbacks;
   var onEnterFrame;
   static var _id;
   static var _container;
   static var _clip;
   static var _sendChannelName;
   static var onError;
   static var _listenChannel;
   static var _sendChannel;
   static var _servURL = "http://www.mochiads.com/static/lib/services/";
   static var _services = "services.swf";
   static var _mochiLC = "MochiLC.swf";
   static var _listenChannelName = "__ms_";
   static var _connecting = false;
   static var _connected = false;
   static var netup = true;
   static var netupAttempted = false;
   static var servicesSync = new mochi.as2.MochiSync();
   function MochiServices()
   {
   }
   static function get id()
   {
      return mochi.as2.MochiServices._id;
   }
   static function get clip()
   {
      return mochi.as2.MochiServices._container;
   }
   static function get childClip()
   {
      return mochi.as2.MochiServices._clip;
   }
   static function getVersion()
   {
      return "3.2 as2";
   }
   static function allowDomains(server)
   {
      var _loc1_ = server.split("/")[2].split(":")[0];
      if(System.security)
      {
         if(System.security.allowDomain)
         {
            System.security.allowDomain("*");
            System.security.allowDomain(_loc1_);
         }
         if(System.security.allowInsecureDomain)
         {
            System.security.allowInsecureDomain("*");
            System.security.allowInsecureDomain(_loc1_);
         }
      }
      return _loc1_;
   }
   static function get isNetworkAvailable()
   {
      if(System.security)
      {
         var _loc1_ = System.security;
         if(_loc1_.sandboxType == "localWithFile")
         {
            return false;
         }
      }
      return true;
   }
   static function set comChannelName(val)
   {
      if(val != undefined)
      {
         if(val.length > 3)
         {
            mochi.as2.MochiServices._sendChannelName = val + "_fromgame";
            mochi.as2.MochiServices.initComChannels();
         }
      }
   }
   static function get connected()
   {
      return mochi.as2.MochiServices._connected;
   }
   static function connect(id, clip, onError)
   {
      mochi.as2.MochiServices.warnID(id,false);
      if(!mochi.as2.MochiServices._connected && mochi.as2.MochiServices._clip == undefined)
      {
         trace("MochiServices Connecting...");
         mochi.as2.MochiServices._connecting = true;
         mochi.as2.MochiServices.init(id,clip);
      }
      if(onError != undefined)
      {
         mochi.as2.MochiServices.onError = onError;
      }
      else if(mochi.as2.MochiServices.onError == undefined)
      {
         mochi.as2.MochiServices.onError = function(errorCode)
         {
            trace(errorCode);
         };
      }
   }
   static function disconnect()
   {
      if(mochi.as2.MochiServices._connected || mochi.as2.MochiServices._connecting)
      {
         mochi.as2.MochiServices._connecting = mochi.as2.MochiServices._connected = false;
         mochi.as2.MochiServices.flush(true);
         if(mochi.as2.MochiServices._clip != undefined)
         {
            mochi.as2.MochiServices._clip.removeMovieClip();
            delete mochi.as2.MochiServices._clip;
         }
         mochi.as2.MochiServices._listenChannel.close();
      }
   }
   static function init(id, clip)
   {
      mochi.as2.MochiServices._id = id;
      if(clip != undefined)
      {
         mochi.as2.MochiServices._container = clip;
      }
      else
      {
         mochi.as2.MochiServices._container = _root;
      }
      mochi.as2.MochiServices.loadCommunicator(id,mochi.as2.MochiServices._container);
   }
   static function loadCommunicator(id, clip)
   {
      var _loc6_ = "_mochiservices_com_" + id;
      var _loc5_ = new MovieClipLoader();
      var _loc3_ = {};
      if(mochi.as2.MochiServices._clip != null)
      {
         return mochi.as2.MochiServices._clip;
      }
      if(!mochi.as2.MochiServices.isNetworkAvailable)
      {
         return null;
      }
      if(mochi.as2.MochiServices.urlOptions().servURL)
      {
         mochi.as2.MochiServices._servURL = mochi.as2.MochiServices.urlOptions().servURL;
      }
      var _loc4_ = mochi.as2.MochiServices._servURL + mochi.as2.MochiServices._services;
      if(mochi.as2.MochiServices.urlOptions().servicesURL)
      {
         _loc4_ = mochi.as2.MochiServices.urlOptions().servicesURL;
      }
      mochi.as2.MochiServices.allowDomains(_loc4_);
      mochi.as2.MochiServices._clip = clip.createEmptyMovieClip(_loc6_,10336,false);
      mochi.as2.MochiServices._listenChannelName += Math.floor(new Date().getTime()) + "_" + Math.floor(Math.random() * 99999);
      mochi.as2.MochiServices.listen();
      if(_loc3_.waitInterval != null)
      {
         clearInterval(_loc3_.waitInterval);
      }
      _loc3_.onLoadError = mochi.as2.MochiServices.loadError;
      _loc3_.onLoadStart = function(target_mc)
      {
         this.isLoading = true;
      };
      _loc3_.startTime = getTimer();
      _loc3_.wait = function()
      {
         if(getTimer() - this.startTime > 10000)
         {
            if(!this.isLoading)
            {
               mochi.as2.MochiServices.disconnect();
               mochi.as2.MochiServices.onError.apply(null,["IOError"]);
            }
            clearInterval(this.waitInterval);
         }
      };
      _loc3_.waitInterval = setInterval(_loc3_,"wait",1000);
      _loc5_.addListener(_loc3_);
      _loc5_.loadClip(_loc4_ + "?listenLC=" + mochi.as2.MochiServices._listenChannelName + "&mochiad_options=" + escape(_root.mochiad_options) + "&api_version=" + getVersion(),mochi.as2.MochiServices._clip);
      mochi.as2.MochiServices._sendChannel = new LocalConnection();
      mochi.as2.MochiServices._sendChannel._queue = [];
      return mochi.as2.MochiServices._clip;
   }
   static function loadError(target_mc, errorCode, httpStatus)
   {
      trace("MochiServices could not load.");
      mochi.as2.MochiServices.disconnect();
      mochi.as2.MochiServices.onError.apply(null,[errorCode]);
   }
   static function onStatus(infoObject)
   {
      var _loc0_ = null;
      if((_loc0_ = infoObject.level) === "error")
      {
         mochi.as2.MochiServices._connected = false;
         mochi.as2.MochiServices._listenChannel.connect(mochi.as2.MochiServices._listenChannelName);
      }
   }
   static function listen()
   {
      mochi.as2.MochiServices._listenChannel = new LocalConnection();
      mochi.as2.MochiServices._listenChannel.handshake = function(args)
      {
         mochi.as2.MochiServices.comChannelName = args.newChannel;
      };
      mochi.as2.MochiServices._listenChannel.allowDomain = function(d)
      {
         return true;
      };
      mochi.as2.MochiServices._listenChannel.allowInsecureDomain = mochi.as2.MochiServices._listenChannel.allowDomain;
      mochi.as2.MochiServices._listenChannel._nextcallbackID = 0;
      mochi.as2.MochiServices._listenChannel._callbacks = {};
      mochi.as2.MochiServices._listenChannel.connect(mochi.as2.MochiServices._listenChannelName);
      trace("Waiting for MochiAds services to connect...");
   }
   static function initComChannels()
   {
      if(!mochi.as2.MochiServices._connected)
      {
         mochi.as2.MochiServices._sendChannel.onStatus = function(infoObject)
         {
            mochi.as2.MochiServices.onStatus(infoObject);
         };
         mochi.as2.MochiServices._sendChannel.send(mochi.as2.MochiServices._sendChannelName,"onReceive",{methodName:"handshakeDone"});
         mochi.as2.MochiServices._sendChannel.send(mochi.as2.MochiServices._sendChannelName,"onReceive",{methodName:"registerGame",id:mochi.as2.MochiServices._id,clip:mochi.as2.MochiServices._clip,version:mochi.as2.MochiServices.getVersion()});
         mochi.as2.MochiServices._listenChannel.onStatus = function(infoObject)
         {
            mochi.as2.MochiServices.onStatus(infoObject);
         };
         mochi.as2.MochiServices._listenChannel.onReceive = function(pkg)
         {
            var _loc5_ = pkg.callbackID;
            var _loc4_ = this._callbacks[_loc5_];
            if(!_loc4_)
            {
               return undefined;
            }
            var _loc2_ = _loc4_.callbackMethod;
            var _loc3_ = _loc4_.callbackObject;
            if(_loc3_ && typeof _loc2_ == "string")
            {
               _loc2_ = _loc3_[_loc2_];
            }
            if(_loc2_ != undefined)
            {
               _loc2_.apply(_loc3_,pkg.args);
            }
            delete this._callbacks[_loc5_];
         };
         mochi.as2.MochiServices._listenChannel.onEvent = function(pkg)
         {
            switch(pkg.target)
            {
               case "events":
                  mochi.as2.MochiEvents.triggerEvent(pkg.event,pkg.args);
                  break;
               case "coins":
                  mochi.as2.MochiCoins.triggerEvent(pkg.event,pkg.args);
                  break;
               case "sync":
                  mochi.as2.MochiServices.servicesSync.triggerEvent(pkg.event,pkg.args);
            }
         };
         mochi.as2.MochiServices._listenChannel.onError = function()
         {
            mochi.as2.MochiServices.onError.apply(null,["IOError"]);
         };
         trace("[SERVICES_API] connected!");
         mochi.as2.MochiServices._connecting = false;
         mochi.as2.MochiServices._connected = true;
         while(mochi.as2.MochiServices._sendChannel._queue.length > 0)
         {
            mochi.as2.MochiServices._sendChannel.send(mochi.as2.MochiServices._sendChannelName,"onReceive",mochi.as2.MochiServices._sendChannel._queue.shift());
         }
      }
   }
   static function flush(error)
   {
      var _loc1_ = undefined;
      var _loc2_ = undefined;
      while(mochi.as2.MochiServices._sendChannel._queue.length > 0)
      {
         _loc1_ = mochi.as2.MochiServices._sendChannel._queue.shift();
         false;
         if(_loc1_.callbackID != null)
         {
            _loc2_ = mochi.as2.MochiServices._listenChannel._callbacks[_loc1_.callbackID];
         }
         delete mochi.as2.MochiServices._listenChannel._callbacks[_loc1_.callbackID];
         if(error)
         {
            mochi.as2.MochiServices.handleError(_loc1_.args,_loc2_.callbackObject,_loc2_.callbackMethod);
         }
      }
   }
   static function handleError(args, callbackObject, callbackMethod)
   {
      if(args != null)
      {
         if(args.onError != null)
         {
            args.onError.apply(null,["NotConnected"]);
         }
         if(args.options != null && args.options.onError != null)
         {
            args.options.onError.apply(null,["NotConnected"]);
         }
      }
      if(callbackMethod != null)
      {
         args = {};
         args.error = true;
         args.errorCode = "NotConnected";
         if(callbackObject != null && typeof callbackMethod == "string")
         {
            callbackObject[callbackMethod](args);
         }
         else if(callbackMethod != null)
         {
            callbackMethod.apply(args);
         }
      }
   }
   static function send(methodName, args, callbackObject, callbackMethod)
   {
      if(mochi.as2.MochiServices._connected)
      {
         mochi.as2.MochiServices._sendChannel.send(mochi.as2.MochiServices._sendChannelName,"onReceive",{methodName:methodName,args:args,callbackID:mochi.as2.MochiServices._listenChannel._nextcallbackID});
      }
      else
      {
         if(mochi.as2.MochiServices._clip == undefined || !mochi.as2.MochiServices._connecting)
         {
            trace("Error: MochiServices not connected.   Please call MochiServices.connect().  Function: " + methodName);
            mochi.as2.MochiServices.handleError(args,callbackObject,callbackMethod);
            mochi.as2.MochiServices.flush(true);
            return undefined;
         }
         mochi.as2.MochiServices._sendChannel._queue.push({methodName:methodName,args:args,callbackID:mochi.as2.MochiServices._listenChannel._nextcallbackID});
      }
      mochi.as2.MochiServices._listenChannel._callbacks[mochi.as2.MochiServices._listenChannel._nextcallbackID] = {callbackObject:callbackObject,callbackMethod:callbackMethod};
      mochi.as2.MochiServices._listenChannel._nextcallbackID = mochi.as2.MochiServices._listenChannel._nextcallbackID + 1;
   }
   static function urlOptions()
   {
      var _loc5_ = {};
      if(_root.mochiad_options)
      {
         var _loc4_ = _root.mochiad_options.split("&");
         var _loc2_ = 0;
         while(_loc2_ < _loc4_.length)
         {
            var _loc3_ = _loc4_[_loc2_].split("=");
            _loc5_[unescape(_loc3_[0])] = unescape(_loc3_[1]);
            _loc2_ = _loc2_ + 1;
         }
      }
      return _loc5_;
   }
   static function warnID(bid, leaderboard)
   {
      bid = bid.toLowerCase();
      if(bid.length != 16)
      {
         trace("WARNING: " + (!leaderboard ? "game" : "board") + " ID is not the appropriate length");
         return undefined;
      }
      if(bid == "1e113c7239048b3f")
      {
         if(leaderboard)
         {
            trace("WARNING: Using testing board ID");
         }
         else
         {
            trace("WARNING: Using testing board ID as game ID");
         }
         return undefined;
      }
      if(bid == "84993a1de4031cd8")
      {
         if(leaderboard)
         {
            trace("WARNING: Using testing game ID as board ID");
         }
         else
         {
            trace("WARNING: Using testing game ID");
         }
         return undefined;
      }
      var _loc1_ = 0;
      while(_loc1_ < bid.length)
      {
         switch(bid.charAt(_loc1_))
         {
            case "0":
            case "1":
            case "2":
            case "3":
            case "4":
            case "5":
            case "6":
            case "7":
            case "8":
            case "9":
            case "a":
            case "b":
            case "c":
            case "d":
            case "e":
            case "f":
               break;
            default:
               trace("WARNING: Board ID contains illegal characters: " + bid);
               return undefined;
         }
         _loc1_ = _loc1_ + 1;
      }
   }
   static function addLinkEvent(url, burl, btn, onClick)
   {
      var timeout = 1500;
      var t0 = getTimer();
      var _loc2_ = new Object();
      _loc2_.mav = mochi.as2.MochiServices.getVersion();
      _loc2_.swfv = btn.getSWFVersion() || 6;
      _loc2_.swfurl = btn._url;
      _loc2_.fv = System.capabilities.version;
      _loc2_.os = System.capabilities.os;
      _loc2_.lang = System.capabilities.language;
      _loc2_.scres = System.capabilities.screenResolutionX + "x" + System.capabilities.screenResolutionY;
      var s = "?";
      var _loc3_ = 0;
      for(var _loc6_ in _loc2_)
      {
         if(_loc3_ != 0)
         {
            s += "&";
         }
         _loc3_ = _loc3_ + 1;
         s = s + _loc6_ + "=" + escape(_loc2_[_loc6_]);
      }
      if(!(mochi.as2.MochiServices.netupAttempted || mochi.as2.MochiServices._connected))
      {
         var ping = btn.createEmptyMovieClip("ping",777);
         var _loc7_ = btn.createEmptyMovieClip("nettest",778);
         mochi.as2.MochiServices.netupAttempted = true;
         ping.loadMovie("http://x.mochiads.com/linkping.swf?t=" + getTimer());
         _loc7_.onEnterFrame = function()
         {
            if(ping._totalframes > 0 && ping._totalframes == ping._framesloaded)
            {
               delete this.onEnterFrame;
            }
            else if(getTimer() - t0 > timeout)
            {
               delete this.onEnterFrame;
               mochi.as2.MochiServices.netup = false;
            }
         };
      }
      var _loc4_ = btn.createEmptyMovieClip("clk",1001);
      _loc4_._alpha = 0;
      _loc4_.beginFill(1044735);
      _loc4_.moveTo(0,0);
      _loc4_.lineTo(0,btn._height);
      _loc4_.lineTo(btn._width,btn._height);
      _loc4_.lineTo(btn._width,0);
      _loc4_.lineTo(0,0);
      _loc4_.endFill();
      _loc4_.onRelease = function()
      {
         if(mochi.as2.MochiServices.netup)
         {
            getURL(url + s,"_blank");
         }
         else
         {
            getURL(burl,"_blank");
         }
         if(onClick != undefined)
         {
            onClick();
         }
      };
   }
   static function setContainer(clip)
   {
   }
   static function stayOnTop(clip)
   {
   }
}
