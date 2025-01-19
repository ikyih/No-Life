class mochi.as2.MochiAd
{
   var clip;
   var fadeout_start;
   var fadeout_time;
   var _parent;
   var onEnterFrame;
   var mc;
   var started;
   var _mochiad_bar;
   var last_pcnt;
   var server_control;
   var fadeFunction;
   var _mochiad_ctr;
   var _url;
   function MochiAd()
   {
   }
   static function getVersion()
   {
      return mochi.as2.MochiServices.getVersion();
   }
   static function showPreGameAd(options)
   {
      var _loc26_ = {clip:_root,ad_timeout:3000,fadeout_time:250,regpt:"o",method:"showPreloaderAd",color:16747008,background:16777161,outline:13994812,no_progress_bar:false,ad_started:function()
      {
         this.clip.stop();
      },ad_finished:function()
      {
         this.clip.play();
      },ad_failed:function()
      {
         trace("[MochiAd] Couldn\'t load an ad, make sure that your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
      },ad_loaded:function(width, height)
      {
      },ad_skipped:function()
      {
      },ad_progress:function(percent)
      {
      }};
      options = mochi.as2.MochiAd._parseOptions(options,_loc26_);
      if("c862232051e0a94e1c3609b3916ddb17".substr(0) == "dfeada81ac97cde83665f81c12da7def")
      {
         options.ad_started();
         options.ad_finished();
         return undefined;
      }
      var clip = options.clip;
      var _loc22_ = 11000;
      var _loc25_ = options.ad_timeout;
      delete options.ad_timeout;
      var fadeout_time = options.fadeout_time;
      delete options.fadeout_time;
      if(!mochi.as2.MochiAd.load(options))
      {
         options.ad_failed();
         options.ad_finished();
         return undefined;
      }
      options.ad_started();
      var mc = clip._mochiad;
      mc.onUnload = function()
      {
         options.ad_finished();
      };
      var _loc14_ = mochi.as2.MochiAd._getRes(options);
      var _loc4_ = _loc14_[0];
      var _loc13_ = _loc14_[1];
      mc._x = _loc4_ * 0.5;
      mc._y = _loc13_ * 0.5;
      var chk = mc.createEmptyMovieClip("_mochiad_wait",3);
      chk._x = _loc4_ * -0.5;
      chk._y = _loc13_ * -0.5;
      var _loc6_ = chk.createEmptyMovieClip("_mochiad_bar",4);
      if(options.no_progress_bar)
      {
         _loc6_._visible = false;
         delete options.no_progress_bar;
      }
      else
      {
         _loc6_._x = 10;
         _loc6_._y = _loc13_ - 20;
      }
      var _loc21_ = options.color;
      delete options.color;
      var _loc19_ = options.background;
      delete options.background;
      var _loc23_ = options.outline;
      delete options.outline;
      var _loc5_ = _loc6_.createEmptyMovieClip("_outline",1);
      _loc5_.beginFill(_loc19_);
      _loc5_.moveTo(0,0);
      _loc5_.lineTo(_loc4_ - 20,0);
      _loc5_.lineTo(_loc4_ - 20,10);
      _loc5_.lineTo(0,10);
      _loc5_.lineTo(0,0);
      _loc5_.endFill();
      var _loc3_ = _loc6_.createEmptyMovieClip("_inside",2);
      _loc3_.beginFill(_loc21_);
      _loc3_.moveTo(0,0);
      _loc3_.lineTo(_loc4_ - 20,0);
      _loc3_.lineTo(_loc4_ - 20,10);
      _loc3_.lineTo(0,10);
      _loc3_.lineTo(0,0);
      _loc3_.endFill();
      _loc3_._xscale = 0;
      var _loc7_ = _loc6_.createEmptyMovieClip("_outline",3);
      _loc7_.lineStyle(0,_loc23_,100);
      _loc7_.moveTo(0,0);
      _loc7_.lineTo(_loc4_ - 20,0);
      _loc7_.lineTo(_loc4_ - 20,10);
      _loc7_.lineTo(0,10);
      _loc7_.lineTo(0,0);
      chk.ad_msec = _loc22_;
      chk.ad_timeout = _loc25_;
      chk.started = getTimer();
      chk.showing = false;
      chk.last_pcnt = 0;
      chk.fadeout_time = fadeout_time;
      chk.fadeFunction = function()
      {
         var _loc2_ = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
         if(_loc2_ > 0)
         {
            this._parent._alpha = _loc2_;
         }
         else
         {
            var _loc3_ = this._parent._parent;
            mochi.as2.MochiAd.unload(_loc3_);
            delete this.onEnterFrame;
         }
      };
      mc.lc.regContLC = function(lc_name)
      {
         mc._containerLCName = lc_name;
      };
      var sendHostProgress = false;
      mc.lc.sendHostLoadProgress = function(lc_name)
      {
         sendHostProgress = true;
      };
      mc.lc.adLoaded = options.ad_loaded;
      mc.lc.adSkipped = options.ad_skipped;
      mc.lc.adjustProgress = function(msec)
      {
         var _loc2_ = this.mc._mochiad_wait;
         _loc2_.server_control = true;
         _loc2_.started = getTimer();
         _loc2_.ad_msec = msec;
      };
      mc.lc.rpc = function(callbackID, arg)
      {
         mochi.as2.MochiAd.rpc(clip,callbackID,arg);
      };
      mc.rpcTestFn = function(s)
      {
         trace("[MOCHIAD rpcTestFn] " + s);
         return s;
      };
      chk.onEnterFrame = function()
      {
         var _loc6_ = this._parent._parent;
         var _loc11_ = this._parent._mochiad_ctr;
         var _loc5_ = getTimer() - this.started;
         var _loc3_ = false;
         var _loc4_ = _loc6_.getBytesTotal();
         var _loc8_ = _loc6_.getBytesLoaded();
         var _loc2_ = 100 * _loc8_ / _loc4_;
         var _loc10_ = 100 * _loc5_ / chk.ad_msec;
         var _loc9_ = this._mochiad_bar._inside;
         var _loc13_ = Math.min(100,Math.min(_loc2_ || 0,_loc10_));
         _loc13_ = Math.max(this.last_pcnt,_loc13_);
         this.last_pcnt = _loc13_;
         _loc9_._xscale = _loc13_;
         options.ad_progress(_loc13_);
         if(sendHostProgress)
         {
            mochi.as2.MochiAd.containerNotify(clip,{id:"hostLoadPcnt",pcnt:_loc2_},clip._mochiad._containerLCName);
            if(_loc2_ == 100)
            {
               sendHostProgress = false;
            }
         }
         if(!chk.showing)
         {
            var _loc7_ = _loc11_.getBytesTotal();
            if(_loc7_ > 0 || typeof _loc7_ == "undefined")
            {
               chk.showing = true;
               chk.started = getTimer();
            }
            else if(_loc5_ > chk.ad_timeout && _loc2_ == 100)
            {
               options.ad_failed();
               _loc3_ = true;
            }
         }
         if(_loc5_ > chk.ad_msec)
         {
            _loc3_ = true;
         }
         if(_loc4_ > 0 && _loc8_ >= _loc4_ && _loc3_)
         {
            if(this.server_control)
            {
               delete this.onEnterFrame;
            }
            else
            {
               this.fadeout_start = getTimer();
               this.onEnterFrame = chk.fadeFunction;
            }
         }
      };
   }
   static function showClickAwayAd(options)
   {
      var _loc9_ = {clip:_root,ad_timeout:2000,fadeout_time:250,regpt:"o",method:"showClickAwayAd",res:"300x250",no_bg:true,ad_started:function()
      {
      },ad_finished:function()
      {
      },ad_loaded:function(width, height)
      {
      },ad_failed:function()
      {
         trace("[MochiAd] Couldn\'t load an ad, make sure that your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
      },ad_skipped:function()
      {
      }};
      options = mochi.as2.MochiAd._parseOptions(options,_loc9_);
      var clip = options.clip;
      var _loc8_ = options.ad_timeout;
      delete options.ad_timeout;
      if(!mochi.as2.MochiAd.load(options))
      {
         options.ad_failed();
         options.ad_finished();
         return undefined;
      }
      options.ad_started();
      var mc = clip._mochiad;
      mc.onUnload = function()
      {
         options.ad_finished();
      };
      var _loc4_ = mochi.as2.MochiAd._getRes(options);
      var _loc10_ = _loc4_[0];
      var _loc7_ = _loc4_[1];
      mc._x = _loc10_ * 0.5;
      mc._y = _loc7_ * 0.5;
      var chk = mc.createEmptyMovieClip("_mochiad_wait",3);
      chk.ad_timeout = _loc8_;
      chk.started = getTimer();
      chk.showing = false;
      mc.lc.adLoaded = options.ad_loaded;
      mc.lc.adSkipped = options.ad_skipped;
      mc.lc.rpc = function(callbackID, arg)
      {
         mochi.as2.MochiAd.rpc(clip,callbackID,arg);
      };
      mc.rpcTestFn = function(s)
      {
         trace("[MOCHIAD rpcTestFn] " + s);
         return s;
      };
      var _loc20_ = false;
      mc.lc.regContLC = function(lc_name)
      {
         mc._containerLCName = lc_name;
      };
      chk.onEnterFrame = function()
      {
         var _loc5_ = this._parent._mochiad_ctr;
         var _loc4_ = getTimer() - this.started;
         var _loc2_ = false;
         if(!chk.showing)
         {
            var _loc3_ = _loc5_.getBytesTotal();
            if(_loc3_ > 0 || typeof _loc3_ == "undefined")
            {
               _loc2_ = true;
               chk.showing = true;
               chk.started = getTimer();
            }
            else if(_loc4_ > chk.ad_timeout)
            {
               options.ad_failed();
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            delete this.onEnterFrame;
         }
      };
   }
   static function showInterLevelAd(options)
   {
      var _loc13_ = {clip:_root,ad_timeout:2000,fadeout_time:250,regpt:"o",method:"showTimedAd",ad_started:function()
      {
         this.clip.stop();
      },ad_finished:function()
      {
         this.clip.play();
      },ad_failed:function()
      {
         trace("[MochiAd] Couldn\'t load an ad, make sure that your game\'s local security sandbox is configured for Access Network Only and that you are not using ad blocking software");
      },ad_loaded:function(width, height)
      {
      },ad_skipped:function()
      {
      }};
      options = mochi.as2.MochiAd._parseOptions(options,_loc13_);
      var clip = options.clip;
      var _loc10_ = 11000;
      var _loc12_ = options.ad_timeout;
      delete options.ad_timeout;
      var fadeout_time = options.fadeout_time;
      delete options.fadeout_time;
      if(!mochi.as2.MochiAd.load(options))
      {
         options.ad_failed();
         options.ad_finished();
         return undefined;
      }
      options.ad_started();
      var mc = clip._mochiad;
      mc.onUnload = function()
      {
         options.ad_finished();
      };
      var _loc5_ = mochi.as2.MochiAd._getRes(options);
      var _loc14_ = _loc5_[0];
      var _loc11_ = _loc5_[1];
      mc._x = _loc14_ * 0.5;
      mc._y = _loc11_ * 0.5;
      var chk = mc.createEmptyMovieClip("_mochiad_wait",3);
      chk.ad_msec = _loc10_;
      chk.ad_timeout = _loc12_;
      chk.started = getTimer();
      chk.showing = false;
      chk.fadeout_time = fadeout_time;
      chk.fadeFunction = function()
      {
         var _loc2_ = 100 * (1 - (getTimer() - this.fadeout_start) / this.fadeout_time);
         if(_loc2_ > 0)
         {
            this._parent._alpha = _loc2_;
         }
         else
         {
            var _loc3_ = this._parent._parent;
            mochi.as2.MochiAd.unload(_loc3_);
            delete this.onEnterFrame;
         }
      };
      mc.lc.adLoaded = options.ad_loaded;
      mc.lc.adSkipped = options.ad_skipped;
      mc.lc.adjustProgress = function(msec)
      {
         var _loc2_ = this.mc._mochiad_wait;
         _loc2_.server_control = true;
         _loc2_.started = getTimer();
         _loc2_.ad_msec = msec - 250;
      };
      mc.lc.rpc = function(callbackID, arg)
      {
         mochi.as2.MochiAd.rpc(clip,callbackID,arg);
      };
      mc.rpcTestFn = function(s)
      {
         trace("[MOCHIAD rpcTestFn] " + s);
         return s;
      };
      chk.onEnterFrame = function()
      {
         var _loc5_ = this._parent._mochiad_ctr;
         var _loc4_ = getTimer() - this.started;
         var _loc2_ = false;
         if(!chk.showing)
         {
            var _loc3_ = _loc5_.getBytesTotal();
            if(_loc3_ > 0 || typeof _loc3_ == "undefined")
            {
               chk.showing = true;
               chk.started = getTimer();
            }
            else if(_loc4_ > chk.ad_timeout)
            {
               options.ad_failed();
               _loc2_ = true;
            }
         }
         if(_loc4_ > chk.ad_msec)
         {
            _loc2_ = true;
         }
         if(_loc2_)
         {
            if(this.server_control)
            {
               delete this.onEnterFrame;
            }
            else
            {
               this.fadeout_start = getTimer();
               this.onEnterFrame = this.fadeFunction;
            }
         }
      };
   }
   static function showPreloaderAd(options)
   {
      trace("[MochiAd] DEPRECATED: showPreloaderAd was renamed to showPreGameAd in 2.0");
      mochi.as2.MochiAd.showPreGameAd(options);
   }
   static function showTimedAd(options)
   {
      trace("[MochiAd] DEPRECATED: showTimedAd was renamed to showInterLevelAd in 2.0");
      mochi.as2.MochiAd.showInterLevelAd(options);
   }
   static function _allowDomains(server)
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
   static function load(options)
   {
      var _loc13_ = {clip:_root,server:"http://x.mochiads.com/srv/1/",method:"load",depth:10333,id:"_UNKNOWN_"};
      options = mochi.as2.MochiAd._parseOptions(options,_loc13_);
      options.swfv = options.clip.getSWFVersion() || 6;
      options.mav = mochi.as2.MochiAd.getVersion();
      var _loc7_ = options.clip;
      if(!mochi.as2.MochiAd._isNetworkAvailable())
      {
         return null;
      }
      if(_loc7_._mochiad_loaded)
      {
         return null;
      }
      var _loc12_ = options.depth;
      delete options.depth;
      var _loc6_ = _loc7_.createEmptyMovieClip("_mochiad",_loc12_);
      var _loc11_ = mochi.as2.MochiAd._getRes(options);
      options.res = _loc11_[0] + "x" + _loc11_[1];
      options.server += options.id;
      delete options.id;
      _loc7_._mochiad_loaded = true;
      if(_loc7_._url.indexOf("http") != 0)
      {
         trace("[MochiAd] NOTE: Security Sandbox Violation errors below are normal");
      }
      var _loc4_ = _loc6_.createEmptyMovieClip("_mochiad_ctr",1);
      for(var _loc8_ in options)
      {
         _loc4_[_loc8_] = options[_loc8_];
      }
      var _loc10_ = _loc4_.server;
      delete _loc4_.server;
      var _loc14_ = mochi.as2.MochiAd._allowDomains(_loc10_);
      _loc6_.onEnterFrame = function()
      {
         if(this._mochiad_ctr._url != this._url)
         {
            this.onEnterFrame = function()
            {
               if(!this._mochiad_ctr)
               {
                  delete this.onEnterFrame;
                  mochi.as2.MochiAd.unload(this._parent);
               }
            };
         }
      };
      var _loc5_ = new Object();
      var _loc9_ = ["",Math.floor(new Date().getTime()),random(999999)].join("_");
      _loc5_.mc = _loc6_;
      _loc5_.name = _loc9_;
      _loc5_.hostname = _loc14_;
      _loc5_.allowDomain = function(d)
      {
         return true;
      };
      _loc5_.allowInsecureDomain = _loc5_.allowDomain;
      _loc5_.connect(_loc9_);
      _loc6_.lc = _loc5_;
      _loc4_.lc = _loc9_;
      _loc4_.st = getTimer();
      _loc4_.loadMovie(_loc10_ + ".swf","POST");
      return _loc6_;
   }
   static function unload(clip)
   {
      if(typeof clip == "undefined")
      {
         clip = _root;
      }
      if(clip.clip && clip.clip._mochiad)
      {
         clip = clip.clip;
      }
      if(!clip._mochiad)
      {
         return false;
      }
      mochi.as2.MochiAd.containerNotify(clip,{id:"unload"},clip._mochiad._containerLCName);
      clip._mochiad.removeMovieClip();
      delete clip._mochiad_loaded;
      delete clip._mochiad;
      return true;
   }
   static function _isNetworkAvailable()
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
   static function _getRes(options)
   {
      var _loc3_ = options.clip.getBounds();
      var _loc2_ = 0;
      var _loc1_ = 0;
      if(typeof options.res != "undefined")
      {
         var _loc4_ = options.res.split("x");
         _loc2_ = parseFloat(_loc4_[0]);
         _loc1_ = parseFloat(_loc4_[1]);
      }
      else
      {
         _loc2_ = _loc3_.xMax - _loc3_.xMin;
         _loc1_ = _loc3_.yMax - _loc3_.yMin;
      }
      if(_loc2_ == 0 || _loc1_ == 0)
      {
         _loc2_ = Stage.width;
         _loc1_ = Stage.height;
      }
      return [_loc2_,_loc1_];
   }
   static function _parseOptions(options, defaults)
   {
      var _loc4_ = {};
      for(var _loc8_ in defaults)
      {
         _loc4_[_loc8_] = defaults[_loc8_];
      }
      if(options)
      {
         for(_loc8_ in options)
         {
            _loc4_[_loc8_] = options[_loc8_];
         }
      }
      if(_root.mochiad_options)
      {
         var _loc5_ = _root.mochiad_options.split("&");
         var _loc2_ = 0;
         while(_loc2_ < _loc5_.length)
         {
            var _loc3_ = _loc5_[_loc2_].split("=");
            _loc4_[unescape(_loc3_[0])] = unescape(_loc3_[1]);
            _loc2_ = _loc2_ + 1;
         }
      }
      if(_loc4_.id == "test")
      {
         trace("[MochiAd] WARNING: Using the MochiAds test identifier, make sure to use the code from your dashboard, not this example!");
      }
      return _loc4_;
   }
   static function rpc(clip, callbackID, arg)
   {
      switch(arg.id)
      {
         case "setValue":
            mochi.as2.MochiAd.setValue(clip,arg.objectName,arg.value);
            break;
         case "getValue":
            var _loc4_ = mochi.as2.MochiAd.getValue(clip,arg.objectName);
            mochi.as2.MochiAd.containerRpcResult(clip,callbackID,_loc4_,clip._mochiad._containerLCName);
            break;
         case "runMethod":
            var _loc3_ = mochi.as2.MochiAd.runMethod(clip,arg.method,arg.args);
            mochi.as2.MochiAd.containerRpcResult(clip,callbackID,_loc3_,clip._mochiad._containerLCName);
            break;
         default:
            trace("[mochiads rpc] unknown rpc id: " + arg.id);
      }
   }
   static function setValue(base, objectName, value)
   {
      var _loc2_ = objectName.split(".");
      var _loc1_ = undefined;
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length - 1)
      {
         if(base[_loc2_[_loc1_]] == undefined || base[_loc2_[_loc1_]] == null)
         {
            return undefined;
         }
         base = base[_loc2_[_loc1_]];
         _loc1_ = _loc1_ + 1;
      }
      base[_loc2_[_loc1_]] = value;
   }
   static function getValue(base, objectName)
   {
      var _loc2_ = objectName.split(".");
      var _loc1_ = undefined;
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length - 1)
      {
         if(base[_loc2_[_loc1_]] == undefined || base[_loc2_[_loc1_]] == null)
         {
            return undefined;
         }
         base = base[_loc2_[_loc1_]];
         _loc1_ = _loc1_ + 1;
      }
      return base[_loc2_[_loc1_]];
   }
   static function runMethod(base, methodName, argsArray)
   {
      var _loc2_ = methodName.split(".");
      var _loc1_ = undefined;
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length - 1)
      {
         if(base[_loc2_[_loc1_]] == undefined || base[_loc2_[_loc1_]] == null)
         {
            return undefined;
         }
         base = base[_loc2_[_loc1_]];
         _loc1_ = _loc1_ + 1;
      }
      if(typeof base[_loc2_[_loc1_]] == "function")
      {
         return base[_loc2_[_loc1_]].apply(base,argsArray);
      }
      return undefined;
   }
   static function containerNotify(clip, args, lcName)
   {
      var _loc1_ = clip._mochiad._mochiad_ctr.ad.app;
      if(_loc1_.notify)
      {
         _loc1_.notify(args);
      }
      else
      {
         new LocalConnection().send(lcName,"notify",args);
      }
   }
   static function containerRpcResult(clip, callbackID, val, lcName)
   {
      var _loc1_ = clip._mochiad._mochiad_ctr.ad.app;
      if(_loc1_.rpcResult)
      {
         _loc1_.rpcResult(callbackID,val);
      }
      else
      {
         new LocalConnection().send(lcName,"rpcResult",callbackID,val);
      }
   }
}
