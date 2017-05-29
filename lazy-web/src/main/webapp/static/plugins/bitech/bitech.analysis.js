//统计模块
//依赖 jquery.queryParser.js;jquery.depend.js;jquery.cookie.js;jquery.storageapi.js;Math.uuid.js
$(window).load(function () {
    var dnt = (navigator.doNotTrack == true || navigator.doNotTrack == "yes" || navigator.doNotTrack == "1" ||
               navigator.msDoNotTrack == "1");
    //$.removeAllStorages();
    var parms;
    if (!dnt) {
        //客户识别码
        var local = $.localStorage;
        var clientID;
        var isNewClient;
        if (local.isEmpty('ClientID')) {
            clientID = Math.uuid();
            isNewClient = true;
            local.set('ClientID', clientID);
        } else {
            clientID = local.get('ClientID');
            isNewClient = false;
        }
        //会话识别码
        var session = $.sessionStorage;
        var sessionID;
        var isNewSession;
        if (session.isEmpty('SessionID')) {
            sessionID = Math.uuid();
            isNewSession = true;
            session.set('SessionID', sessionID);
        }
        else {
            sessionID = session.get('SessionID');
            isNewSession = false;
        }
        //公共函数
        var getScreenInches = function (width, xdpi, height, ydpi) {    //得到屏幕尺寸
            if (width && xdpi && height && ydpi)
                return Math.floor(Math.sqrt(Math.pow(width / xdpi, 2) + Math.pow(height / ydpi, 2)) * 10 + 0.5) / 10;
            else
                return undefined;
        };
        var plugins = function () { //得到浏览器插件列表
            var found = {};
            var version_reg = /[0-9]+/;

            /*
            * Differentiate between IE (detection via ActiveXObject)
            * and the rest (detection via navigator.plugins)
            */
            if (window.ActiveXObject) {
                var plugin_list = {
                    flash: 'ShockwaveFlash.ShockwaveFlash.1',
                    pdf: 'AcroPDF.PDF',
                    silverlight: 'AgControl.AgControl',
                    quicktime: 'QuickTime.QuickTime'
                }

                for (var plugin in plugin_list) {
                    var version = msieDetect(plugin_list[plugin]);
                    if (version) {
                        var version_reg_val = version_reg.exec(version);
                        found[plugin] = (version_reg_val && version_reg_val[0]) || '';
                    }
                }

                if (navigator.javaEnabled()) {
                    found['java'] = '4';
                }
            } else {
                var plugins = navigator.plugins;
                var reg = /Flash|PDF|Java|Silverlight|QuickTime/;
                for (var i = 0; i < plugins.length; i++) {
                    var reg_val = reg.exec(plugins[i].description);
                    if (reg_val) {
                        var plugin = reg_val[0].toLowerCase();
                        /*
                        * Search in version property, if not available concat name and description
                        * and search for a version number in there
                        */
                        var version = plugins[i].version ||
                    (plugins[i].name + ' ' + plugins[i].description);
                        var version_reg_val = version_reg.exec(version);
                        if (!found[plugin]) {
                            found[plugin] = (version_reg_val && version_reg_val[0]) || '';
                        }
                    }
                }
            }

            return found;

            /*
            * Return version number if plugin installed
            * Return true if plugin is installed but no version number found
            * Return false if plugin not found
            */
            function msieDetect(name) {
                try {
                    var active_x_obj = new ActiveXObject(name);
                    try {
                        return active_x_obj.GetVariable('$version');
                    } catch (e) {
                        try {
                            return active_x_obj.GetVersions();
                        } catch (e) {
                            try {
                                var version;
                                for (var i = 1; i < 9; i++) {
                                    if (active_x_obj.isVersionSupported(i + '.0')) {
                                        version = i;
                                    }
                                }
                                return version || true;
                            } catch (e) {
                                return true;
                            }
                        }
                    }
                } catch (e) {
                    return false;
                }
            }
        };
        var getHost = function (url) {  //得到url中的域名
            if (!url)
                return undefined;
            var host = "";
            var regex = /.*\:\/\/([^\/]*).*/;
            var match = url.match(regex);
            if (typeof match != "undefined"
                        && null != match)
                host = match[1];
            return host;
        };
        var getSearchKeyWords = function (trQuery) {    //获得url中的关键字
            if (!trQuery || trQuery.indexOf('?') <= 0)
                return undefined;
            trQuery = trQuery.substr(trQuery.indexOf('?'));
            var kv = $.parseQuery(trQuery);
            var keys = ["p", "q", "qs", "encquery", "k", "qt", "query", "rdata", "search_word", "wd", "w"];
            for (var key in kv) {
                if (jQuery.inArray(key, keys) != -1)
                    return kv[key];
            }
            return undefined;
        };
        var getScriptVersion = function () {
            try {
                return ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion();
            } catch (e) {
                return undefined;
            }
        };
        //获得统计信息
        parms = {
            Session_DoNotTrack: dnt,
            Session_ClientID: clientID,
            Session_IsNewClientID: isNewClient,
            Session_SessionID: sessionID,
            Session_IsNewSession: isNewSession,
            Session_Url: location.href,
            Agent_UserAgent: navigator.userAgent,
            Agent_UserLanguage: (navigator.language || navigator.browserLanguage).toLowerCase(),
            Agent_OSName: $.platform.original,
            Agent_OSVersion: $.platform.version.toString(),
            Agent_OSBits: $.platform.type,
            Agent_BrowserName: $.browser.original,
            Agent_BrowserVersion: $.browser.version.major + "." + $.browser.version.minor,
            Agent_ScreenWidth: screen.width,
            Agent_ScreenHeight: screen.height,
            Agent_ScreenXDPI: screen.deviceXDPI,
            Agent_ScreenYDPI: screen.deviceYDPI,
            Agent_ScreenInches: getScreenInches(screen.width, screen.deviceXDPI, screen.height, screen.deviceYDPI),
            Agent_ScreenColors: screen.colorDepth,
            Agent_IsJavaEnabled: navigator.javaEnabled(),
            Agent_JavaVersion: plugins().java,
            Agent_IsFlashEnabled: plugins().flash ? true : false,
            Agent_FlashVersion: plugins().flash,
            Agent_IsSilverlightEnabled: plugins().silverlight ? true : false,
            Agent_SilverlighVersion: plugins().silverlight,
            Agent_IsCookieEnabled: navigator.cookieEnabled,
            Agent_CookieVersion: window.localStorage ? "5" : "4",
            Agent_IsScriptEnabled: true,
            Agent_ScriptVersion: getScriptVersion(),
            Reffer_RefferUrl: document.referrer,
            Reffer_RefferSite: getHost(document.referrer),
            Reffer_RefferKey: getSearchKeyWords(document.referrer),
            Reffer_IsSearchEngine: getSearchKeyWords(document.referrer) ? true : false,
            Reffer_IsDirectAccess: document.referrer ? false : true
        };
    } else {
        //客户端禁止跟踪
        parms = {
            Session_DoNotTrack: dnt
        };
    }
    //发送统计数据
    $(".cmsanalysis").each(function (index, item) {
        var ctl = $(this);
        var type = ctl.attr("data-cmsanalysis-type");
        var id = ctl.attr("data-cmsanalysis-id");
        var url = ctl.attr("data-cmsanalysis-url");
        if (!type || !id || !url)
            return true;

        $.post(url + "?type=" + type + "&id=" + id + "&callback=?", parms, function (data) {
            ctl.text(data);
        }, "jsonp").error(function (ev) {
        });
    });
});
