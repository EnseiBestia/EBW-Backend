window.BMAP_AUTHENTIC_KEY = "AuNk3YS21DSmHEEvIFDf9dbD"; (function() {
    function aa(a) {
        throw a;
    }
    var j = void 0,
    n = !0,
    p = null,
    q = !1;
    function s() {
        return function() {}
    }
    function ba(a) {
        return function(b) {
            this[a] = b
        }
    }
    function t(a) {
        return function() {
            return this[a]
        }
    }
    function ca(a) {
        return function() {
            return a
        }
    }
    var ea, fa = [];
    function ha(a) {
        return function() {
            return fa[a].apply(this, arguments)
        }
    }
    function ia(a, b) {
        return fa[a] = b
    }
    var ja, v = ja = v || {
        version: "1.3.4"
    };
    v.Q = "$BAIDU$";
    window[v.Q] = window[v.Q] || {};
    v.object = v.object || {};
    v.extend = v.object.extend = function(a, b) {
        for (var c in b) b.hasOwnProperty(c) && (a[c] = b[c]);
        return a
    };
    v.C = v.C || {};
    v.C.N = function(a) {
        return "string" == typeof a || a instanceof String ? document.getElementById(a) : a && a.nodeName && (1 == a.nodeType || 9 == a.nodeType) ? a: p
    };
    v.N = v.gc = v.C.N;
    v.C.J = function(a) {
        a = v.C.N(a);
        a.style.display = "none";
        return a
    };
    v.J = v.C.J;
    v.lang = v.lang || {};
    v.lang.Jf = function(a) {
        return "[object String]" == Object.prototype.toString.call(a)
    };
    v.Jf = v.lang.Jf;
    v.C.Si = function(a) {
        return v.lang.Jf(a) ? document.getElementById(a) : a
    };
    v.Si = v.C.Si;
    v.C.contains = function(a, b) {
        var c = v.C.Si,
        a = c(a),
        b = c(b);
        return a.contains ? a != b && a.contains(b) : !!(a.compareDocumentPosition(b) & 16)
    };
    v.R = v.R || {};
    /msie (\d+\.\d)/i.test(navigator.userAgent) && (v.R.aa = v.aa = document.documentMode || +RegExp.$1);
    var ka = {
        cellpadding: "cellPadding",
        cellspacing: "cellSpacing",
        colspan: "colSpan",
        rowspan: "rowSpan",
        valign: "vAlign",
        usemap: "useMap",
        frameborder: "frameBorder"
    };
    8 > v.R.aa ? (ka["for"] = "htmlFor", ka["class"] = "className") : (ka.htmlFor = "for", ka.className = "class");
    v.C.QC = ka;
    v.C.JB = function(a, b, c) {
        a = v.C.N(a);
        if ("style" == b) a.style.cssText = c;
        else {
            b = v.C.QC[b] || b;
            a.setAttribute(b, c)
        }
        return a
    };
    v.JB = v.C.JB;
    v.C.KB = function(a, b) {
        var a = v.C.N(a),
        c;
        for (c in b) v.C.JB(a, c, b[c]);
        return a
    };
    v.KB = v.C.KB;
    v.Oj = v.Oj || {}; (function() {
        var a = RegExp("(^[\\s\\t\\xa0\\u3000]+)|([\\u3000\\xa0\\s\\t]+$)", "g");
        v.Oj.trim = function(b) {
            return ("" + b).replace(a, "")
        }
    })();
    v.trim = v.Oj.trim;
    v.Oj.Zk = function(a, b) {
        var a = "" + a,
        c = Array.prototype.slice.call(arguments, 1),
        d = Object.prototype.toString;
        if (c.length) {
            c = c.length == 1 ? b !== p && /\[object Array\]|\[object Object\]/.test(d.call(b)) ? b: c: c;
            return a.replace(/#\{(.+?)\}/g,
            function(a, b) {
                var g = c[b];
                "[object Function]" == d.call(g) && (g = g(b));
                return "undefined" == typeof g ? "": g
            })
        }
        return a
    };
    v.Zk = v.Oj.Zk;
    v.C.Rb = function(a, b) {
        for (var a = v.C.N(a), c = a.className.split(/\s+/), d = b.split(/\s+/), e, f = d.length, g, i = 0; i < f; ++i) {
            g = 0;
            for (e = c.length; g < e; ++g) if (c[g] == d[i]) {
                c.splice(g, 1);
                break
            }
        }
        a.className = c.join(" ");
        return a
    };
    v.Rb = v.C.Rb;
    v.C.Su = function(a, b, c) {
        var a = v.C.N(a),
        d;
        if (a.insertAdjacentHTML) a.insertAdjacentHTML(b, c);
        else {
            d = a.ownerDocument.createRange();
            b = b.toUpperCase();
            if (b == "AFTERBEGIN" || b == "BEFOREEND") {
                d.selectNodeContents(a);
                d.collapse(b == "AFTERBEGIN")
            } else {
                b = b == "BEFOREBEGIN";
                d[b ? "setStartBefore": "setEndAfter"](a);
                d.collapse(b)
            }
            d.insertNode(d.createContextualFragment(c))
        }
        return a
    };
    v.Su = v.C.Su;
    v.C.show = function(a) {
        a = v.C.N(a);
        a.style.display = "";
        return a
    };
    v.show = v.C.show;
    v.C.lA = function(a) {
        a = v.C.N(a);
        return a.nodeType == 9 ? a: a.ownerDocument || a.document
    };
    v.C.Va = function(a, b) {
        for (var a = v.C.N(a), c = b.split(/\s+/), d = a.className, e = " " + d + " ", f = 0, g = c.length; f < g; f++) e.indexOf(" " + c[f] + " ") < 0 && (d = d + (" " + c[f]));
        a.className = d;
        return a
    };
    v.Va = v.C.Va;
    v.C.oy = v.C.oy || {};
    v.C.Ak = v.C.Ak || [];
    v.C.Ak.filter = function(a, b, c) {
        for (var d = 0,
        e = v.C.Ak,
        f; f = e[d]; d++) if (f = f[c]) b = f(a, b);
        return b
    };
    v.Oj.sJ = function(a) {
        return a.indexOf("-") < 0 && a.indexOf("_") < 0 ? a: a.replace(/[-_][^-_]/g,
        function(a) {
            return a.charAt(1).toUpperCase()
        })
    };
    v.C.QX = function(a, b) {
        v.C.Fq(a, b) ? v.C.Rb(a, b) : v.C.Va(a, b)
    };
    v.C.Fq = function(a) {
        if (arguments.length <= 0 || typeof a === "function") return this;
        if (this.size() <= 0) return q;
        var a = a.replace(/^\s+/g, "").replace(/\s+$/g, "").replace(/\s+/g, " "),
        b = a.split(" "),
        c;
        v.forEach(this,
        function(a) {
            for (var a = a.className,
            e = 0; e < b.length; e++) if (!~ (" " + a + " ").indexOf(" " + b[e] + " ")) {
                c = q;
                return
            }
            c !== q && (c = n)
        });
        return c
    };
    v.C.vi = function(a, b) {
        var c = v.C,
        a = c.N(a),
        b = v.Oj.sJ(b),
        d = a.style[b];
        if (!d) var e = c.oy[b],
        d = a.currentStyle || (v.R.aa ? a.style: getComputedStyle(a, p)),
        d = e && e.get ? e.get(a, d) : d[e || b];
        if (e = c.Ak) d = e.filter(b, d, "get");
        return d
    };
    v.vi = v.C.vi;
    /opera\/(\d+\.\d)/i.test(navigator.userAgent) && (v.R.opera = +RegExp.$1);
    v.R.DH = /webkit/i.test(navigator.userAgent);
    v.R.TR = /gecko/i.test(navigator.userAgent) && !/like gecko/i.test(navigator.userAgent);
    v.R.WA = "CSS1Compat" == document.compatMode;
    v.C.U = function(a) {
        var a = v.C.N(a),
        b = v.C.lA(a),
        c = v.R,
        d = v.C.vi;
        c.TR > 0 && b.getBoxObjectFor && d(a, "position");
        var e = {
            left: 0,
            top: 0
        },
        f;
        if (a == (c.aa && !c.WA ? b.body: b.documentElement)) return e;
        if (a.getBoundingClientRect) {
            a = a.getBoundingClientRect();
            e.left = Math.floor(a.left) + Math.max(b.documentElement.scrollLeft, b.body.scrollLeft);
            e.top = Math.floor(a.top) + Math.max(b.documentElement.scrollTop, b.body.scrollTop);
            e.left = e.left - b.documentElement.clientLeft;
            e.top = e.top - b.documentElement.clientTop;
            a = b.body;
            b = parseInt(d(a, "borderLeftWidth"));
            d = parseInt(d(a, "borderTopWidth"));
            if (c.aa && !c.WA) {
                e.left = e.left - (isNaN(b) ? 2 : b);
                e.top = e.top - (isNaN(d) ? 2 : d)
            }
        } else {
            f = a;
            do {
                e.left = e.left + f.offsetLeft;
                e.top = e.top + f.offsetTop;
                if (c.DH > 0 && d(f, "position") == "fixed") {
                    e.left = e.left + b.body.scrollLeft;
                    e.top = e.top + b.body.scrollTop;
                    break
                }
                f = f.offsetParent
            } while ( f && f != a );
            if (c.opera > 0 || c.DH > 0 && d(a, "position") == "absolute") e.top = e.top - b.body.offsetTop;
            for (f = a.offsetParent; f && f != b.body;) {
                e.left = e.left - f.scrollLeft;
                if (!c.opera || f.tagName != "TR") e.top = e.top - f.scrollTop;
                f = f.offsetParent
            }
        }
        return e
    };
    /firefox\/(\d+\.\d)/i.test(navigator.userAgent) && (v.R.kg = +RegExp.$1);
    /BIDUBrowser/i.test(navigator.userAgent) && (v.R.GV = n);
    var la = navigator.userAgent;
    /(\d+\.\d)?(?:\.\d)?\s+safari\/?(\d+\.\d+)?/i.test(la) && !/chrome/i.test(la) && (v.R.SI = +(RegExp.$1 || RegExp.$2));
    /chrome\/(\d+\.\d)/i.test(navigator.userAgent) && (v.R.OF = +RegExp.$1);
    v.Wb = v.Wb || {};
    v.Wb.Db = function(a, b) {
        var c, d, e = a.length;
        if ("function" == typeof b) for (d = 0; d < e; d++) {
            c = a[d];
            c = b.call(a, c, d);
            if (c === q) break
        }
        return a
    };
    v.Db = v.Wb.Db;
    v.lang.Q = function() {
        return "TANGRAM__" + (window[v.Q]._counter++).toString(36)
    };
    window[v.Q]._counter = window[v.Q]._counter || 1;
    window[v.Q]._instances = window[v.Q]._instances || {};
    v.lang.Mq = function(a) {
        return "[object Function]" == Object.prototype.toString.call(a)
    };
    v.lang.oa = function(a) {
        this.Q = a || v.lang.Q();
        window[v.Q]._instances[this.Q] = this
    };
    window[v.Q]._instances = window[v.Q]._instances || {};
    v.lang.oa.prototype.kh = ha(1);
    v.lang.oa.prototype.toString = function() {
        return "[object " + (this.mL || "Object") + "]"
    };
    v.lang.cw = function(a, b) {
        this.type = a;
        this.returnValue = n;
        this.target = b || p;
        this.currentTarget = p
    };
    v.lang.oa.prototype.addEventListener = function(a, b, c) {
        if (v.lang.Mq(b)) { ! this.Kh && (this.Kh = {});
            var d = this.Kh,
            e;
            if (typeof c == "string" && c) { / [ ^ \w\ - ] / .test(c) && aa("nonstandard key:" + c);
                e = b.gH = c
            }
            a.indexOf("on") != 0 && (a = "on" + a);
            typeof d[a] != "object" && (d[a] = {});
            e = e || v.lang.Q();
            b.gH = e;
            d[a][e] = b
        }
    };
    v.lang.oa.prototype.removeEventListener = function(a, b) {
        if (v.lang.Mq(b)) b = b.gH;
        else if (!v.lang.Jf(b)) return; ! this.Kh && (this.Kh = {});
        a.indexOf("on") != 0 && (a = "on" + a);
        var c = this.Kh;
        c[a] && c[a][b] && delete c[a][b]
    };
    v.lang.oa.prototype.dispatchEvent = function(a, b) {
        v.lang.Jf(a) && (a = new v.lang.cw(a)); ! this.Kh && (this.Kh = {});
        var b = b || {},
        c;
        for (c in b) a[c] = b[c];
        var d = this.Kh,
        e = a.type;
        a.target = a.target || this;
        a.currentTarget = this;
        e.indexOf("on") != 0 && (e = "on" + e);
        v.lang.Mq(this[e]) && this[e].apply(this, arguments);
        if (typeof d[e] == "object") for (c in d[e]) d[e][c].apply(this, arguments);
        return a.returnValue
    };
    v.lang.ha = function(a, b, c) {
        var d, e, f = a.prototype;
        e = new Function;
        e.prototype = b.prototype;
        e = a.prototype = new e;
        for (d in f) e[d] = f[d];
        a.prototype.constructor = a;
        a.VT = b.prototype;
        if ("string" == typeof c) e.mL = c
    };
    v.ha = v.lang.ha;
    v.lang.rd = function(a) {
        return window[v.Q]._instances[a] || p
    };
    v.platform = v.platform || {};
    v.platform.WR = /macintosh/i.test(navigator.userAgent);
    v.platform.XW = /MicroMessenger/i.test(navigator.userAgent);
    v.platform.EH = /windows/i.test(navigator.userAgent);
    v.platform.aS = /x11/i.test(navigator.userAgent);
    v.platform.xn = /android/i.test(navigator.userAgent);
    /android (\d+\.\d)/i.test(navigator.userAgent) && (v.platform.yF = v.yF = RegExp.$1);
    v.platform.VR = /ipad/i.test(navigator.userAgent);
    v.platform.wH = /iphone/i.test(navigator.userAgent);
    function y(a, b) {
        a.domEvent = b = window.event || b;
        a.clientX = b.clientX || b.pageX;
        a.clientY = b.clientY || b.pageY;
        a.offsetX = b.offsetX || b.layerX;
        a.offsetY = b.offsetY || b.layerY;
        a.screenX = b.screenX;
        a.screenY = b.screenY;
        a.ctrlKey = b.ctrlKey || b.metaKey;
        a.shiftKey = b.shiftKey;
        a.altKey = b.altKey;
        if (b.touches) {
            a.touches = [];
            for (var c = 0; c < b.touches.length; c++) a.touches.push({
                clientX: b.touches[c].clientX,
                clientY: b.touches[c].clientY,
                screenX: b.touches[c].screenX,
                screenY: b.touches[c].screenY,
                pageX: b.touches[c].pageX,
                pageY: b.touches[c].pageY,
                target: b.touches[c].target,
                identifier: b.touches[c].identifier
            })
        }
        if (b.changedTouches) {
            a.changedTouches = [];
            for (c = 0; c < b.changedTouches.length; c++) a.changedTouches.push({
                clientX: b.changedTouches[c].clientX,
                clientY: b.changedTouches[c].clientY,
                screenX: b.changedTouches[c].screenX,
                screenY: b.changedTouches[c].screenY,
                pageX: b.changedTouches[c].pageX,
                pageY: b.changedTouches[c].pageY,
                target: b.changedTouches[c].target,
                identifier: b.changedTouches[c].identifier
            })
        }
        if (b.targetTouches) {
            a.targetTouches = [];
            for (c = 0; c < b.targetTouches.length; c++) a.targetTouches.push({
                clientX: b.targetTouches[c].clientX,
                clientY: b.targetTouches[c].clientY,
                screenX: b.targetTouches[c].screenX,
                screenY: b.targetTouches[c].screenY,
                pageX: b.targetTouches[c].pageX,
                pageY: b.targetTouches[c].pageY,
                target: b.targetTouches[c].target,
                identifier: b.targetTouches[c].identifier
            })
        }
        a.rotation = b.rotation;
        a.scale = b.scale;
        return a
    }
    v.lang.eu = function(a) {
        var b = window[v.Q];
        b.cN && delete b.cN[a]
    };
    v.event = {};
    v.D = v.event.D = function(a, b, c) {
        if (! (a = v.N(a))) return a;
        b = b.replace(/^on/, "");
        a.addEventListener ? a.addEventListener(b, c, q) : a.attachEvent && a.attachEvent("on" + b, c);
        return a
    };
    v.Ud = v.event.Ud = function(a, b, c) {
        if (! (a = v.N(a))) return a;
        b = b.replace(/^on/, "");
        a.removeEventListener ? a.removeEventListener(b, c, q) : a.detachEvent && a.detachEvent("on" + b, c);
        return a
    };
    v.C.Fq = function(a, b) {
        if (!a || !a.className || typeof a.className != "string") return q;
        var c = -1;
        try {
            c = a.className == b || a.className.search(RegExp("(\\s|^)" + b + "(\\s|$)"))
        } catch(d) {
            return q
        }
        return c > -1
    };
    v.sG = function() {
        function a(a) {
            document.addEventListener && (this.element = a, this.vG = this.ll ? "touchstart": "mousedown", this.Vz = this.ll ? "touchmove": "mousemove", this.Uz = this.ll ? "touchend": "mouseup", this.yg = q, this.Br = this.Ar = 0, this.element.addEventListener(this.vG, this, q), ja.D(this.element, "mousedown", s()), this.handleEvent(p))
        }
        a.prototype = {
            ll: "ontouchstart" in window || "createTouch" in document,
            start: function(a) {
                ma(a);
                this.yg = q;
                this.Ar = this.ll ? a.touches[0].clientX: a.clientX;
                this.Br = this.ll ? a.touches[0].clientY: a.clientY;
                this.element.addEventListener(this.Vz, this, q);
                this.element.addEventListener(this.Uz, this, q)
            },
            move: function(a) {
                na(a);
                var c = this.ll ? a.touches[0].clientY: a.clientY;
                if (10 < Math.abs((this.ll ? a.touches[0].clientX: a.clientX) - this.Ar) || 10 < Math.abs(c - this.Br)) this.yg = n
            },
            end: function(a) {
                na(a);
                this.yg || (a = document.createEvent("Event"), a.initEvent("tap", q, n), this.element.dispatchEvent(a));
                this.element.removeEventListener(this.Vz, this, q);
                this.element.removeEventListener(this.Uz, this, q)
            },
            handleEvent: function(a) {
                if (a) switch (a.type) {
                case this.vG:
                    this.start(a);
                    break;
                case this.Vz:
                    this.move(a);
                    break;
                case this.Uz:
                    this.end(a)
                }
            }
        };
        return function(b) {
            return new a(b)
        }
    } ();
    var B = window.BMap || {};
    B.version = "2.0";
    B.kF = 0.34 > Math.random();
    0 <= B.version.indexOf("#") && (B.version = "2.0");
    B.wp = [];
    B.oe = function(a) {
        this.wp.push(a)
    };
    B.mp = [];
    B.Bl = function(a) {
        this.mp.push(a)
    };
    B.VO = B.apiLoad || s();
    var oa = window.BMAP_AUTHENTIC_KEY;
    window.BMAP_AUTHENTIC_KEY = p;
    var pa = window.BMap_loadScriptTime,
    qa = (new Date).getTime(),
    sa = p,
    ta = n,
    C = p,
    ua = 5042,
    va = 5002,
    xa = 5003,
    ya = "load_mapclick",
    za = 5038,
    Aa = 5041,
    Ba = 5047,
    Ca = 5036,
    Da = 5039,
    Ea = 5037,
    Ga = 5040,
    Ha = 5011,
    Ia = 7E3;
    function Ja(a, b) {
        if (a = v.N(a)) {
            var c = this;
            v.lang.oa.call(c);
            b = b || {};
            c.F = {
                Ty: 200,
                kc: n,
                nu: q,
                Mz: n,
                kq: n,
                mq: q,
                Pz: n,
                lq: n,
                lu: n,
                Xm: b.enable3DBuilding || q,
                Xc: 25,
                MU: 240,
                JO: 450,
                Cb: E.Cb,
                Wc: E.Wc,
                Tu: !!b.Tu,
                $c: b.minZoom || 1,
                Mc: b.maxZoom || 19,
                gb: b.mapType || Ka,
                CX: q,
                mu: n,
                ju: 500,
                oQ: b.enableHighResolution !== q,
                oi: b.enableMapClick !== q,
                devicePixelRatio: b.devicePixelRatio || window.devicePixelRatio || 1,
                gC: b.vectorMapLevel || (H() ? 3 : 99),
                Od: b.mapStyle || p,
                iS: b.logoControl === q ? q: n,
                bP: ["chrome"],
                Ot: b.beforeClickIcon || p
            };
            c.F.Od && (this.MR(c.F.Od.controls), this.qH(c.F.Od.geotableId));
            c.F.Od && c.F.Od.styleId && c.KW(c.F.Od.styleId);
            c.F.Qk = {
                dark: {
                    backColor: "#2D2D2D",
                    textColor: "#bfbfbf",
                    iconUrl: "dicons"
                },
                normal: {
                    backColor: "#F3F1EC",
                    textColor: "#c61b1b",
                    iconUrl: "icons"
                },
                light: {
                    backColor: "#EBF8FC",
                    textColor: "#017fb4",
                    iconUrl: "licons"
                }
            };
            b.enableAutoResize && (c.F.lu = b.enableAutoResize);
            v.platform.xn && 1.5 < window.devicePixelRatio && (c.F.devicePixelRatio = 1.5);
            var d = c.F.bP;
            if (H()) for (var e = 0,
            f = d.length; e < f; e++) if (v.R[d[e]]) {
                c.F.devicePixelRatio = 1;
                break
            }
            d = -1 < navigator.userAgent.toLowerCase().indexOf("android");
            e = -1 < navigator.userAgent.toLowerCase().indexOf("mqqbrowser");
            d && e && (c.F.gC = 99, c.F.oQ = q, c.F.devicePixelRatio = 1);
            c.Ga = a;
            c.iy(a);
            a.unselectable = "on";
            a.innerHTML = "";
            a.appendChild(c.qa());
            b.size && this.cd(b.size);
            d = c.Fb();
            c.width = d.width;
            c.height = d.height;
            c.offsetX = 0;
            c.offsetY = 0;
            c.platform = a.firstChild;
            c.Pd = c.platform.firstChild;
            c.Pd.style.width = c.width + "px";
            c.Pd.style.height = c.height + "px";
            c.Gd = {};
            c.Ye = new J(0, 0);
            c.lc = new J(0, 0);
            c.za = 3;
            c.qc = 0;
            c.lz = p;
            c.kz = p;
            c.Lb = "";
            c.St = "";
            c.Tg = {};
            c.Tg.custom = {};
            c.Ha = 0;
            c.H = new La(a, {
                bf: "api"
            });
            c.H.J();
            c.H.MB(c);
            b = b || {};
            d = c.gb = c.F.gb;
            c.Rd = d.kn();
            d === Ma && Na(va);
            d === Oa && Na(xa);
            d = c.F;
            d.JJ = b.minZoom;
            d.IJ = b.maxZoom;
            c.ls();
            c.G = {
                mc: q,
                Pb: 0,
                Rq: 0,
                JH: 0,
                aX: 0,
                My: q,
                wB: -1,
                je: []
            };
            c.platform.style.cursor = c.F.Cb;
            for (e = 0; e < B.wp.length; e++) B.wp[e](c);
            c.G.wB = e;
            c.P();
            K.load("map",
            function() {
                c.wb()
            });
            c.F.oi && (setTimeout(function() {
                Na(ya)
            },
            1E3), K.load("mapclick",
            function() {
                window.MPC_Mgr = new Pa(c)
            },
            n));
            Qa() && K.load("oppc",
            function() {
                c.yw()
            });
            H() && K.load("opmb",
            function() {
                c.yw()
            });
            a = p;
            c.vy = []
        }
    }
    v.lang.ha(Ja, v.lang.oa, "Map");
    v.extend(Ja.prototype, {
        qa: function() {
            var a = L("div"),
            b = a.style;
            b.overflow = "visible";
            b.position = "absolute";
            b.zIndex = "0";
            b.top = b.left = "0px";
            var b = L("div", {
                "class": "BMap_mask"
            }),
            c = b.style;
            c.position = "absolute";
            c.top = c.left = "0px";
            c.zIndex = "9";
            c.overflow = "hidden";
            c.WebkitUserSelect = "none";
            a.appendChild(b);
            return a
        },
        iy: function(a) {
            var b = a.style;
            b.overflow = "hidden";
            "absolute" != Ra(a).position && (b.position = "relative", b.zIndex = 0);
            b.backgroundColor = "#F3F1EC";
            b.color = "#000";
            b.textAlign = "left"
        },
        P: function() {
            var a = this;
            a.Lp = function() {
                var b = a.Fb();
                if (a.width != b.width || a.height != b.height) {
                    var c = new M(a.width, a.height),
                    d = new N("onbeforeresize");
                    d.size = c;
                    a.dispatchEvent(d);
                    a.ej((b.width - a.width) / 2, (b.height - a.height) / 2);
                    a.Pd.style.width = (a.width = b.width) + "px";
                    a.Pd.style.height = (a.height = b.height) + "px";
                    c = new N("onresize");
                    c.size = b;
                    a.dispatchEvent(c)
                }
            };
            a.F.lu && (a.G.Pp = setInterval(a.Lp, 80))
        },
        ej: function(a, b, c, d) {
            var e = this.ia().dc(this.T()),
            f = this.Rd,
            g = n;
            c && J.vH(c) && (this.Ye = new J(c.lng, c.lat), g = q);
            if (c = c && d ? f.tl(c, this.Lb) : this.lc) if (this.lc = new J(c.lng + a * e, c.lat - b * e), (a = f.zj(this.lc, this.Lb)) && g) this.Ye = a
        },
        Tf: function(a, b) {
            if (Sa(a) && (this.ls(), a = this.lm(a).zoom, a != this.za)) {
                this.qc = this.za;
                this.za = a;
                var c;
                b ? c = b: this.pg() && (c = this.pg().U());
                c && (c = this.Nb(c, this.qc), this.ej(this.width / 2 - c.x, this.height / 2 - c.y, this.ib(c, this.qc), n));
                this.dispatchEvent(new N("onzoomstart"));
                this.dispatchEvent(new N("onzoomstartcode"))
            }
        },
        Ad: function(a) {
            this.Tf(a)
        },
        jC: function(a) {
            this.Tf(this.za + 1, a)
        },
        kC: function(a) {
            this.Tf(this.za - 1, a)
        },
        xh: function(a) {
            a instanceof J && (this.lc = this.Rd.tl(a, this.Lb), this.Ye = J.vH(a) ? new J(a.lng, a.lat) : this.Rd.zj(this.lc, this.Lb))
        },
        Of: function(a, b) {
            a = Math.round(a) || 0;
            b = Math.round(b) || 0;
            this.ej( - a, -b)
        },
        Et: function(a) {
            a && Ta(a.se) && (a.se(this), this.dispatchEvent(new N("onaddcontrol", a)))
        },
        LI: function(a) {
            a && Ta(a.remove) && (a.remove(), this.dispatchEvent(new N("onremovecontrol", a)))
        },
        Gm: function(a) {
            a && Ta(a.ea) && (a.ea(this), this.dispatchEvent(new N("onaddcontextmenu", a)))
        },
        In: function(a) {
            a && Ta(a.remove) && (this.dispatchEvent(new N("onremovecontextmenu", a)), a.remove())
        },
        va: function(a) {
            a && Ta(a.se) && (a.se(this), this.dispatchEvent(new N("onaddoverlay", a)))
        },
        zb: function(a) {
            a && Ta(a.remove) && (a.remove(), this.dispatchEvent(new N("onremoveoverlay", a)))
        },
        RF: function() {
            this.dispatchEvent(new N("onclearoverlays"))
        },
        eg: function(a) {
            a && this.dispatchEvent(new N("onaddtilelayer", a))
        },
        Cg: function(a) {
            a && this.dispatchEvent(new N("onremovetilelayer", a))
        },
        Qf: function(a) {
            if (this.gb !== a) {
                var b = new N("onsetmaptype");
                b.vX = this.gb;
                this.gb = this.F.gb = a;
                this.Rd = this.gb.kn();
                this.ej(0, 0, this.wa(), n);
                this.ls();
                var c = this.lm(this.T()).zoom;
                this.Tf(c);
                this.dispatchEvent(b);
                b = new N("onmaptypechange");
                b.za = c;
                b.gb = a;
                this.dispatchEvent(b); (a === Ua || a === Oa) && Na(xa)
            }
        },
        lf: function(a) {
            var b = this;
            if (a instanceof J) b.xh(a, {
                noAnimation: n
            });
            else if (Va(a)) if (b.gb == Ma) {
                var c = E.Py[a];
                c && (pt = c.m, b.lf(pt))
            } else {
                var d = this.ND();
                d.PB(function(c) {
                    0 == d.fl() && 2 == d.ta.result.type && (b.lf(c.tj(0).point), Ma.pj(a) && b.LB(a))
                });
                d.search(a, {
                    log: "center"
                })
            }
        },
        Id: function(a, b) {
            "[object Undefined]" !== Object.prototype.toString.call(b) && (b = parseInt(b));
            C = H() ? Wa.Ih.kj(B.kF ? 102 : 101) : Wa.Ih.kj(1);
            C.Cr();
            C.qw = +new Date;
            C.Tb("script_loaded", qa - pa);
            C.Tb("centerAndZoom");
            var c = this;
            if (Va(a)) if (c.gb == Ma) {
                var d = E.Py[a];
                d && (pt = d.m, c.Id(pt, b))
            } else {
                var e = c.ND();
                e.PB(function(d) {
                    if (0 == e.fl() && 2 == e.ta.result.type) {
                        var d = d.tj(0).point,
                        f = b || O.gA(e.ta.content.level, c);
                        c.Id(d, f);
                        Ma.pj(a) && c.LB(a)
                    }
                });
                e.search(a, {
                    log: "center"
                })
            } else if (a instanceof J && b) {
                b = c.lm(b).zoom;
                c.qc = c.za || b;
                c.za = b;
                d = c.Ye;
                c.Ye = new J(a.lng, a.lat);
                c.lc = c.Rd.tl(c.Ye, c.Lb);
                c.lz = c.lz || c.za;
                c.kz = c.kz || c.Ye;
                var f = new N("onload"),
                g = new N("onloadcode");
                f.point = new J(a.lng, a.lat);
                f.pixel = c.Nb(c.Ye, c.za);
                f.zoom = b;
                c.loaded || (c.loaded = n, c.dispatchEvent(f), sa || (sa = Xa()));
                c.dispatchEvent(g);
                f = new N("onmoveend");
                f.sD = "centerAndZoom";
                d.nb(c.Ye) || c.dispatchEvent(f);
                c.dispatchEvent(new N("onmoveend"));
                c.qc != c.za && (d = new N("onzoomend"), d.sD = "centerAndZoom", c.dispatchEvent(d));
                c.F.Xm && c.Xm()
            }
        },
        ND: function() {
            this.G.OH || (this.G.OH = new Ya(1));
            return this.G.OH
        },
        reset: function() {
            this.Id(this.kz, this.lz, n)
        },
        enableDragging: function() {
            this.F.kc = n
        },
        disableDragging: function() {
            this.F.kc = q
        },
        enableInertialDragging: function() {
            this.F.mu = n
        },
        disableInertialDragging: function() {
            this.F.mu = q
        },
        enableScrollWheelZoom: function() {
            this.F.mq = n
        },
        disableScrollWheelZoom: function() {
            this.F.mq = q
        },
        enableContinuousZoom: function() {
            this.F.kq = n
        },
        disableContinuousZoom: function() {
            this.F.kq = q
        },
        enableDoubleClickZoom: function() {
            this.F.Mz = n
        },
        disableDoubleClickZoom: function() {
            this.F.Mz = q
        },
        enableKeyboard: function() {
            this.F.nu = n
        },
        disableKeyboard: function() {
            this.F.nu = q
        },
        enablePinchToZoom: function() {
            this.F.lq = n
        },
        disablePinchToZoom: function() {
            this.F.lq = q
        },
        enableAutoResize: function() {
            this.F.lu = n;
            this.Lp();
            this.G.Pp || (this.G.Pp = setInterval(this.Lp, 80))
        },
        disableAutoResize: function() {
            this.F.lu = q;
            this.G.Pp && (clearInterval(this.G.Pp), this.G.Pp = p)
        },
        Xm: function() {
            this.F.Xm = n;
            this.fm || (this.fm = new Za({
                zG: n
            }), this.eg(this.fm))
        },
        YP: function() {
            this.F.Xm = q;
            this.fm && (this.Cg(this.fm), this.fm = p, delete this.fm)
        },
        Fb: function() {
            return this.bq && this.bq instanceof M ? new M(this.bq.width, this.bq.height) : new M(this.Ga.clientWidth, this.Ga.clientHeight)
        },
        cd: function(a) {
            a && a instanceof M ? (this.bq = a, this.Ga.style.width = a.width + "px", this.Ga.style.height = a.height + "px") : this.bq = p
        },
        wa: t("Ye"),
        T: t("za"),
        tP: function() {
            this.Lp()
        },
        lm: function(a) {
            var b = this.F.$c,
            c = this.F.Mc,
            d = q;
            a < b && (d = n, a = b);
            a > c && (d = n, a = c);
            return {
                zoom: a,
                Wz: d
            }
        },
        Ba: t("Ga"),
        Nb: function(a, b) {
            b = b || this.T();
            return this.Rd.Nb(a, b, this.lc, this.Fb(), this.Lb)
        },
        ib: function(a, b) {
            b = b || this.T();
            return this.Rd.ib(a, b, this.lc, this.Fb(), this.Lb)
        },
        ne: function(a, b) {
            if (a) {
                var c = this.Nb(new J(a.lng, a.lat), b);
                c.x -= this.offsetX;
                c.y -= this.offsetY;
                return c
            }
        },
        BI: function(a, b) {
            if (a) {
                var c = new P(a.x, a.y);
                c.x += this.offsetX;
                c.y += this.offsetY;
                return this.ib(c, b)
            }
        },
        pointToPixelFor3D: function(a, b) {
            var c = map.Lb;
            this.gb == Ma && c && $a.XF(a, this, b)
        },
        qX: function(a, b) {
            var c = map.Lb;
            this.gb == Ma && c && $a.WF(a, this, b)
        },
        rX: function(a, b) {
            var c = this,
            d = map.Lb;
            c.gb == Ma && d && $a.XF(a, c,
            function(a) {
                a.x -= c.offsetX;
                a.y -= c.offsetY;
                b && b(a)
            })
        },
        oX: function(a, b) {
            var c = map.Lb;
            this.gb == Ma && c && (a.x += this.offsetX, a.y += this.offsetY, $a.WF(a, this, b))
        },
        cf: function(a) {
            if (!this.SA()) return new ab;
            var b = a || {},
            a = b.margins || [0, 0, 0, 0],
            c = b.zoom || p,
            b = this.ib({
                x: a[3],
                y: this.height - a[2]
            },
            c),
            a = this.ib({
                x: this.width - a[1],
                y: a[0]
            },
            c);
            return new ab(b, a)
        },
        SA: function() {
            return !! this.loaded
        },
        rM: function(a, b) {
            for (var c = this.ia(), d = b.margins || [10, 10, 10, 10], e = b.zoomFactor || 0, f = d[1] + d[3], d = d[0] + d[2], g = c.dn(), i = c = c.cl(); i >= g; i--) {
                var k = this.ia().dc(i);
                if (a.aC().lng / k < this.width - f && a.aC().lat / k < this.height - d) break
            }
            i += e;
            i < g && (i = g);
            i > c && (i = c);
            return i
        },
        Eq: function(a, b) {
            var c = {
                center: this.wa(),
                zoom: this.T()
            };
            if (!a || !a instanceof ab && 0 == a.length || a instanceof ab && a.zi()) return c;
            var d = [];
            a instanceof ab ? (d.push(a.ef()), d.push(a.le())) : d = a.slice(0);
            for (var b = b || {},
            e = [], f = 0, g = d.length; f < g; f++) e.push(this.Rd.tl(d[f], this.Lb));
            d = new ab;
            for (f = e.length - 1; 0 <= f; f--) d.extend(e[f]);
            if (d.zi()) return c;
            c = d.wa();
            e = this.rM(d, b);
            b.margins && (d = b.margins, f = (d[1] - d[3]) / 2, d = (d[0] - d[2]) / 2, g = this.ia().dc(e), b.offset && (f = b.offset.width, d = b.offset.height), c.lng += g * f, c.lat += g * d);
            c = this.Rd.zj(c, this.Lb);
            return {
                center: c,
                zoom: e
            }
        },
        Eg: function(a, b) {
            var c;
            c = a && a.center ? a: this.Eq(a, b);
            var b = b || {},
            d = b.delay || 200;
            if (c.zoom == this.za && b.enableAnimation != q) {
                var e = this;
                setTimeout(function() {
                    e.xh(c.center, {
                        duration: 210
                    })
                },
                d)
            } else this.Id(c.center, c.zoom)
        },
        gf: t("Gd"),
        pg: function() {
            return this.G.Wa && this.G.Wa.Ja() ? this.G.Wa: p
        },
        getDistance: function(a, b) {
            if (a && b) {
                var c = 0,
                c = Q.an(a, b);
                if (c == p || c == j) c = 0;
                return c
            }
        },
        vA: function() {
            var a = [],
            b = this.ma,
            c = this.Wd;
            if (b) for (var d in b) b[d] instanceof bb && a.push(b[d]);
            if (c) {
                d = 0;
                for (b = c.length; d < b; d++) a.push(c[d])
            }
            return a
        },
        ia: t("gb"),
        yw: function() {
            for (var a = this.G.wB; a < B.wp.length; a++) B.wp[a](this);
            this.G.wB = a
        },
        LB: function(a) {
            this.Lb = Ma.pj(a);
            this.St = Ma.JG(this.Lb);
            this.gb == Ma && this.Rd instanceof cb && (this.Rd.dz = this.Lb)
        },
        setDefaultCursor: function(a) {
            this.F.Cb = a;
            this.platform && (this.platform.style.cursor = this.F.Cb)
        },
        getDefaultCursor: function() {
            return this.F.Cb
        },
        setDraggingCursor: function(a) {
            this.F.Wc = a
        },
        getDraggingCursor: function() {
            return this.F.Wc
        },
        rg: ca(q),
        Gt: function(a, b) {
            b ? this.Tg[b] || (this.Tg[b] = {}) : b = "custom";
            a.tag = b;
            a instanceof db && (this.Tg[b][a.Q] = a, a.ea(this));
            var c = this;
            K.load("hotspot",
            function() {
                c.yw()
            })
        },
        US: function(a, b) {
            b || (b = "custom");
            this.Tg[b][a.Q] && delete this.Tg[b][a.Q]
        },
        Ok: function(a) {
            a || (a = "custom");
            this.Tg[a] = {}
        },
        ls: function() {
            var a = this.rg() ? this.gb.k.ER: this.gb.dn(),
            b = this.rg() ? this.gb.k.Pu: this.gb.cl(),
            c = this.F;
            c.$c = c.JJ || a;
            c.Mc = c.IJ || b;
            c.$c < a && (c.$c = a);
            c.Mc > b && (c.Mc = b)
        },
        setMinZoom: function(a) {
            a > this.F.Mc && (a = this.F.Mc);
            this.F.JJ = a;
            this.fF()
        },
        setMaxZoom: function(a) {
            a < this.F.$c && (a = this.F.$c);
            this.F.IJ = a;
            this.fF()
        },
        fF: function() {
            this.ls();
            var a = this.F;
            this.za < a.$c ? this.Ad(a.$c) : this.za > a.Mc && this.Ad(a.Mc);
            var b = new N("onzoomspanchange");
            b.$c = a.$c;
            b.Mc = a.Mc;
            this.dispatchEvent(b)
        },
        MW: t("vy"),
        getKey: function() {
            return oa
        },
        kr: function(a) {
            window.MPC_Mgr && window.MPC_Mgr.close();
            var b = this;
            b.F.oi = q;
            if (a) {
                b = this;
                a.styleJson && (a.styleStr = b.ST(a.styleJson));
                H() && v.R.SI ? setTimeout(function() {
                    b.F.Od = a;
                    b.dispatchEvent(new N("onsetcustomstyles", a))
                },
                50) : (this.F.Od = a, this.dispatchEvent(new N("onsetcustomstyles", a)), this.qH(b.F.Od.geotableId));
                var c = {
                    style: a.style
                };
                a.features && 0 < a.features.length && (c.features = n);
                a.styleJson && 0 < a.styleJson.length && (c.styleJson = n);
                Na(5050, c);
                a.style && (c = b.F.Qk[a.style] ? b.F.Qk[a.style].backColor: b.F.Qk.normal.backColor) && (this.Ba().style.backgroundColor = c)
            }
        },
        MR: function(a) {
            this.controls || (this.controls = {
                navigationControl: new eb,
                scaleControl: new fb,
                overviewMapControl: new gb,
                mapTypeControl: new hb
            });
            var b = this,
            c;
            for (c in this.controls) b.LI(b.controls[c]);
            a = a || [];
            v.Wb.Db(a,
            function(a) {
                b.Et(b.controls[a])
            })
        },
        qH: function(a) {
            a ? this.$p && this.$p.yf == a || (this.Cg(this.$p), this.$p = new ib({
                geotableId: a
            }), this.eg(this.$p)) : this.Cg(this.$p)
        },
        Jb: function() {
            var a = this.T() >= this.F.gC && this.ia() == Ka && 18 >= this.T(),
            b = q;
            try {
                document.createElement("canvas").getContext("2d"),
                b = n
            } catch(c) {
                b = q
            }
            return a && b
        },
        getCurrentCity: function() {
            return {
                name: this.Pm,
                code: this.Jy
            }
        },
        getPanorama: t("H"),
        setPanorama: function(a) {
            this.H = a;
            this.H.MB(this)
        },
        ST: function(a) {
            for (var b = {
                featureType: "t",
                elementType: "e",
                visibility: "v",
                color: "c",
                lightness: "l",
                saturation: "s",
                weight: "w",
                zoom: "z",
                hue: "h"
            },
            c = {
                all: "all",
                geometry: "g",
                "geometry.fill": "g.f",
                "geometry.stroke": "g.s",
                labels: "l",
                "labels.text.fill": "l.t.f",
                "labels.text.stroke": "l.t.s",
                "lables.text": "l.t",
                "labels.icon": "l.i"
            },
            d = [], e = 0, f; f = a[e]; e++) {
                var g = f.stylers;
                delete f.stylers;
                v.extend(f, g);
                var g = [],
                i;
                for (i in b) f[i] && ("elementType" == i ? g.push(b[i] + ":" + c[f[i]]) : g.push(b[i] + ":" + f[i]));
                2 < g.length && d.push(g.join("|"))
            }
            return d.join(",")
        }
    });
    function Na(a, b) {
        if (a) {
            var b = b || {},
            c = "",
            d;
            for (d in b) c = c + "&" + d + "=" + encodeURIComponent(b[d]);
            var e = function(a) {
                a && (jb = n, setTimeout(function() {
                    kb.src = B.pc + "images/blank.gif?" + a.src
                },
                50))
            },
            f = function() {
                var a = lb.shift();
                a && e(a)
            };
            d = (1E8 * Math.random()).toFixed(0);
            jb ? lb.push({
                src: "product=jsapi&sub_product=jsapi&v=" + B.version + "&sub_product_v=" + B.version + "&t=" + d + "&code=" + a + "&da_src=" + a + c
            }) : e({
                src: "product=jsapi&sub_product=jsapi&v=" + B.version + "&sub_product_v=" + B.version + "&t=" + d + "&code=" + a + "&da_src=" + a + c
            });
            nb || (v.D(kb, "load",
            function() {
                jb = q;
                f()
            }), v.D(kb, "error",
            function() {
                jb = q;
                f()
            }), nb = n)
        }
    }
    var jb, nb, lb = [],
    kb = new Image;
    Na(5E3, {
        device_pixel_ratio: window.devicePixelRatio,
        platform: navigator.platform
    });
    B.lH = {
        TILE_BASE_URLS: ["ss0.baidu.com/5bwHcj7lABFU8t_jkk_Z1zRvfdw6buu", "ss0.baidu.com/5bwHcj7lABFV8t_jkk_Z1zRvfdw6buu", "ss0.baidu.com/5bwHcj7lABFS8t_jkk_Z1zRvfdw6buu", "ss0.bdstatic.com/5bwHcj7lABFT8t_jkk_Z1zRvfdw6buu", "ss0.bdstatic.com/5bwHcj7lABFY8t_jkk_Z1zRvfdw6buu"],
        TILE_ONLINE_URLS: ["ss0.bdstatic.com/8bo_dTSlR1gBo1vgoIiO_jowehsv", "ss0.bdstatic.com/8bo_dTSlRMgBo1vgoIiO_jowehsv", "ss0.bdstatic.com/8bo_dTSlRcgBo1vgoIiO_jowehsv", "ss0.bdstatic.com/8bo_dTSlRsgBo1vgoIiO_jowehsv", "ss0.bdstatic.com/8bo_dTSlQ1gBo1vgoIiO_jowehsv"],
        TIlE_PERSPECT_URLS: ["ss0.bdstatic.com/-OR1cTe9KgQFm2e88IuM_a", "ss0.bdstatic.com/-ON1cTe9KgQFm2e88IuM_a", "ss0.bdstatic.com/-OZ1cTe9KgQFm2e88IuM_a", "ss0.bdstatic.com/-OV1cTe9KgQFm2e88IuM_a"],
        geolocControl: "p0.baidu.com/8LkJsjOpB1gCo2Kml5_Y_D3",
        TILES_YUN_HOST: ["sp0.baidu.com/-eR1bSahKgkFkRGko9WTAnF6hhy", "sp0.baidu.com/-eN1bSahKgkFkRGko9WTAnF6hhy", "sp0.baidu.com/-eZ1bSahKgkFkRGko9WTAnF6hhy", "sp0.baidu.com/-eV1bSahKgkFkRGko9WTAnF6hhy"],
        traffic: "sp0.baidu.com/7_AZsjOpB1gCo2Kml5_Y_D3",
        iw_pano: "ss0.bdstatic.com/5LUZemba_QUU8t7mm9GUKT-xh_",
        message: "sp0.baidu.com/7vo0bSba2gU2pMbgoY3K",
        baidumap: "sp0.baidu.com/80MWsjip0QIZ8tyhnq",
        wuxian: "sp0.baidu.com/6a1OdTeaKgQFm2e88IuM_a",
        pano: ["ss0.bdstatic.com/5LUZemba_QUU8t7mm9GUKT-xh_", "ss0.bdstatic.com/5LUZemfa_QUU8t7mm9GUKT-xh_", "ss0.bdstatic.com/5LUZemja_QUU8t7mm9GUKT-xh_"],
        main_domain_nocdn: {
            baidu: "sp0.baidu.com/9_Q4sjOpB1gCo2Kml5_Y_D3",
            other: "sapi.map.baidu.com"
        },
        main_domain_cdn: {
            baidu: ["ss0.bdstatic.com/9_Q4vHSd2RZ3otebn9fN2DJv", "ss0.baidu.com/9_Q4vXSd2RZ3otebn9fN2DJv", "ss0.bdstatic.com/9_Q4vnSd2RZ3otebn9fN2DJv"],
            other: ["sapi.map.baidu.com"]
        },
        map_click: "sp0.baidu.com/80MWbzKh2wt3n2qy8IqW0jdnxx1xbK",
        vector_traffic: "ss0.bdstatic.com/8aZ1cTe9KgQIm2_p8IuM_a"
    };
    B.IR = {
        TILE_BASE_URLS: ["shangetu0.map.bdimg.com", "shangetu1.map.bdimg.com", "shangetu2.map.bdimg.com", "shangetu3.map.bdimg.com", "shangetu4.map.bdimg.com"],
        TILE_ONLINE_URLS: ["online0.map.bdimg.com", "online1.map.bdimg.com", "online2.map.bdimg.com", "online3.map.bdimg.com", "online4.map.bdimg.com"],
        TIlE_PERSPECT_URLS: ["d0.map.baidu.com", "d1.map.baidu.com", "d2.map.baidu.com", "d3.map.baidu.com"],
        geolocControl: "loc.map.baidu.com",
        TILES_YUN_HOST: ["g0.api.map.baidu.com", "g1.api.map.baidu.com", "g2.api.map.baidu.com", "g3.api.map.baidu.com"],
        traffic: "its.map.baidu.com",
        iw_pano: "pcsv0.map.bdimg.com",
        message: "j.map.baidu.com",
        baidumap: "map.baidu.com",
        wuxian: "wuxian.baidu.com",
        pano: ["pcsv0.map.bdimg.com", "pcsv1.map.bdimg.com", "pcsv2.map.bdimg.com"],
        main_domain_nocdn: {
            baidu: "api.map.baidu.com"
        },
        main_domain_cdn: {
            baidu: ["api0.map.bdimg.com", "api1.map.bdimg.com", "api2.map.bdimg.com"]
        },
        map_click: "mapclick.map.baidu.com",
        vector_traffic: "or.map.bdimg.com"
    };
    B.tU = {
        "0": {
            proto: "http://",
            domain: B.IR
        },
        1 : {
            proto: "https://",
            domain: B.lH
        },
        2 : {
            proto: "https://",
            domain: B.lH
        }
    };
    B.Tv = window.HOST_TYPE || "0";
    B.url = B.tU[B.Tv];
    B.av = B.url.proto + B.url.domain.baidumap + "/";
    B.pc = B.url.proto + ("2" == B.Tv ? B.url.domain.main_domain_nocdn.other: B.url.domain.main_domain_nocdn.baidu) + "/";
    B.ca = B.url.proto + ("2" == B.Tv ? B.url.domain.main_domain_cdn.other[0] : B.url.domain.main_domain_cdn.baidu[0]) + "/";
    function ob(a) {
        var b = {
            duration: 1E3,
            Xc: 30,
            Sm: 0,
            Dd: sb.MH,
            jv: s()
        };
        this.qf = [];
        if (a) for (var c in a) b[c] = a[c];
        this.k = b;
        if (Sa(b.Sm)) {
            var d = this;
            setTimeout(function() {
                d.start()
            },
            b.Sm)
        } else b.Sm != tb && this.start()
    }
    var tb = "INFINITE";
    ob.prototype.start = function() {
        this.gs = Xa();
        this.$w = this.gs + this.k.duration;
        ub(this)
    };
    ob.prototype.add = ha(0);
    function ub(a) {
        var b = Xa();
        b >= a.$w ? (Ta(a.k.qa) && a.k.qa(a.k.Dd(1)), Ta(a.k.finish) && a.k.finish(), 0 < a.qf.length && (b = a.qf[0], b.qf = [].concat(a.qf.slice(1)), b.start())) : (a.Av = a.k.Dd((b - a.gs) / a.k.duration), Ta(a.k.qa) && a.k.qa(a.Av), a.XB || (a.Ip = setTimeout(function() {
            ub(a)
        },
        1E3 / a.k.Xc)))
    }
    ob.prototype.stop = function(a) {
        this.XB = n;
        for (var b = 0; b < this.qf.length; b++) this.qf[b].stop(),
        this.qf[b] = p;
        this.qf.length = 0;
        this.Ip && (clearTimeout(this.Ip), this.Ip = p);
        this.k.jv(this.Av);
        a && (this.$w = this.gs, ub(this))
    };
    ob.prototype.cancel = ha(2);
    var sb = {
        MH: function(a) {
            return a
        },
        reverse: function(a) {
            return 1 - a
        },
        Jz: function(a) {
            return a * a
        },
        Iz: function(a) {
            return Math.pow(a, 3)
        },
        qG: function(a) {
            return - (a * (a - 2))
        },
        mQ: function(a) {
            return Math.pow(a - 1, 3) + 1
        },
        pG: function(a) {
            return 0.5 > a ? 2 * a * a: -2 * (a - 2) * a - 1
        },
        bW: function(a) {
            return 0.5 > a ? 4 * Math.pow(a, 3) : 4 * Math.pow(a - 1, 3) + 1
        },
        cW: function(a) {
            return (1 - Math.cos(Math.PI * a)) / 2
        }
    };
    sb["ease-in"] = sb.Jz;
    sb["ease-out"] = sb.qG;
    var E = {
        nC: 34,
        oC: 21,
        pC: new M(21, 32),
        XJ: new M(10, 32),
        WJ: new M(24, 36),
        VJ: new M(12, 36),
        lC: new M(13, 1),
        da: B.ca + "images/",
        mC: B.ca + "images/markers_new.png",
        TJ: 24,
        UJ: 73,
        Py: {
            "\u5317\u4eac": {
                qv: "bj",
                m: new J(116.403874, 39.914889)
            },
            "\u4e0a\u6d77": {
                qv: "sh",
                m: new J(121.487899, 31.249162)
            },
            "\u6df1\u5733": {
                qv: "sz",
                m: new J(114.025974, 22.546054)
            },
            "\u5e7f\u5dde": {
                qv: "gz",
                m: new J(113.30765, 23.120049)
            }
        },
        fontFamily: "arial,sans-serif"
    };
    v.R.kg ? (v.extend(E, {
        iG: "url(" + E.da + "ruler.cur),crosshair",
        Cb: "-moz-grab",
        Wc: "-moz-grabbing"
    }), v.platform.EH && (E.fontFamily = "arial,simsun,sans-serif")) : v.R.OF || v.R.SI ? v.extend(E, {
        iG: "url(" + E.da + "ruler.cur) 2 6,crosshair",
        Cb: "url(" + E.da + "openhand.cur) 8 8,default",
        Wc: "url(" + E.da + "closedhand.cur) 8 8,move"
    }) : v.extend(E, {
        iG: "url(" + E.da + "ruler.cur),crosshair",
        Cb: "url(" + E.da + "openhand.cur),default",
        Wc: "url(" + E.da + "closedhand.cur),move"
    });
    function vb(a, b) {
        var c = a.style;
        c.left = b[0] + "px";
        c.top = b[1] + "px"
    }
    function wb(a) {
        0 < v.R.aa ? a.unselectable = "on": a.style.MozUserSelect = "none"
    }
    function xb(a) {
        return a && a.parentNode && 11 != a.parentNode.nodeType
    }
    function yb(a, b) {
        v.C.Su(a, "beforeEnd", b);
        return a.lastChild
    }
    function zb(a) {
        for (var b = {
            left: 0,
            top: 0
        }; a && a.offsetParent;) b.left += a.offsetLeft,
        b.top += a.offsetTop,
        a = a.offsetParent;
        return b
    }
    function ma(a) {
        a = window.event || a;
        a.stopPropagation ? a.stopPropagation() : a.cancelBubble = n
    }
    function Ab(a) {
        a = window.event || a;
        a.preventDefault ? a.preventDefault() : a.returnValue = q;
        return q
    }
    function na(a) {
        ma(a);
        return Ab(a)
    }
    function Bb() {
        var a = document.documentElement,
        b = document.body;
        return a && (a.scrollTop || a.scrollLeft) ? [a.scrollTop, a.scrollLeft] : b ? [b.scrollTop, b.scrollLeft] : [0, 0]
    }
    function Cb(a, b) {
        if (a && b) return Math.round(Math.sqrt(Math.pow(a.x - b.x, 2) + Math.pow(a.y - b.y, 2)))
    }
    function Db(a, b) {
        var c = [],
        b = b ||
        function(a) {
            return a
        },
        d;
        for (d in a) c.push(d + "=" + b(a[d]));
        return c.join("&")
    }
    function L(a, b, c) {
        var d = document.createElement(a);
        c && (d = document.createElementNS(c, a));
        return v.C.KB(d, b || {})
    }
    function Ra(a) {
        if (a.currentStyle) return a.currentStyle;
        if (a.ownerDocument && a.ownerDocument.defaultView) return a.ownerDocument.defaultView.getComputedStyle(a, p)
    }
    function Ta(a) {
        return "function" == typeof a
    }
    function Sa(a) {
        return "number" == typeof a
    }
    function Va(a) {
        return "string" == typeof a
    }
    function Eb(a) {
        return "undefined" != typeof a
    }
    function Fb(a) {
        return "object" == typeof a
    }
    var Gb = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    function Hb(a) {
        var b = "",
        c, d, e = "",
        f, g = "",
        i = 0;
        f = /[^A-Za-z0-9\+\/\=]/g;
        if (!a || f.exec(a)) return a;
        a = a.replace(/[^A-Za-z0-9\+\/\=]/g, "");
        do c = Gb.indexOf(a.charAt(i++)),
        d = Gb.indexOf(a.charAt(i++)),
        f = Gb.indexOf(a.charAt(i++)),
        g = Gb.indexOf(a.charAt(i++)),
        c = c << 2 | d >> 4,
        d = (d & 15) << 4 | f >> 2,
        e = (f & 3) << 6 | g,
        b += String.fromCharCode(c),
        64 != f && (b += String.fromCharCode(d)),
        64 != g && (b += String.fromCharCode(e));
        while (i < a.length);
        return b
    }
    var N = v.lang.cw;
    function H() {
        return ! (!v.platform.wH && !v.platform.VR && !v.platform.xn)
    }
    function Qa() {
        return ! (!v.platform.EH && !v.platform.WR && !v.platform.aS)
    }
    function Xa() {
        return (new Date).getTime()
    }
    function Ib() {
        var a = document.body.appendChild(L("div"));
        a.innerHTML = '<v:shape id="vml_tester1" adj="1" />';
        var b = a.firstChild;
        if (!b.style) return q;
        b.style.behavior = "url(#default#VML)";
        b = b ? "object" == typeof b.adj: n;
        a.parentNode.removeChild(a);
        return b
    }
    function Jb() {
        return !! document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Shape", "1.1")
    }
    function Kb() {
        return !! L("canvas").getContext
    }
    B.hS = function() {
        var a = n,
        b = n,
        c = n,
        d = n,
        e = 0,
        f = 0,
        g = 0,
        i = 0;
        return {
            wL: function() {
                e += 1;
                a && (a = q, setTimeout(function() {
                    Na(5054, {
                        pic: e
                    });
                    a = n;
                    e = 0
                },
                1E4))
            },
            XU: function() {
                f += 1;
                b && (b = q, setTimeout(function() {
                    Na(5055, {
                        move: f
                    });
                    b = n;
                    f = 0
                },
                1E4))
            },
            ZU: function() {
                g += 1;
                c && (c = q, setTimeout(function() {
                    Na(5056, {
                        zoom: g
                    });
                    c = n;
                    g = 0
                },
                1E4))
            },
            YU: function(a) {
                i += a;
                d && (d = q, setTimeout(function() {
                    Na(5057, {
                        tile: i
                    });
                    d = n;
                    i = 0
                },
                5E3))
            }
        }
    } ();
    var Wa; (function() {
        function a(a) {
            this.WO = a;
            this.timing = {};
            this.start = +new Date
        }
        function b(a, b) {
            if (a.length === +a.length) for (var c = 0,
            d = a.length; c < d && b.call(j, c, a[c], a) !== q; c++);
            else for (c in a) if (a.hasOwnProperty(c) && b.call(j, c, a[c], a) === q) break
        }
        var c = [],
        d = {
            push: function(a) {
                c.push(a);
                if (window.localStorage && window.JSON) try {
                    localStorage.setItem("WPO_NR", JSON.stringify(c))
                } catch(b) {}
            },
            get: function(a) {
                var b = [];
                if (window.localStorage) try {
                    a && localStorage.removeItem("WPO_NR")
                } catch(d) {}
                b = c;
                a && (c = []);
                return b
            }
        },
        e,
        f,
        g,
        i,
        k = {}; (!window.localStorage || !window.JSON) && document.attachEvent && window.attachEvent("onbeforeunload",
        function() {
            l.send()
        });
        var l = {
            send: function(a) {
                var c = [],
                e = [],
                f = a || d.get(n),
                g;
                0 < f.length && (b(f,
                function(d, e) {
                    var f = [];
                    b(e.timing,
                    function(a, b) {
                        f.push('"' + a + '":' + b)
                    });
                    c.push('{"t":{' + f.join(",") + '},"a":' + e.WO + "}"); ! g && (a && e.start) && (g = e.start)
                }), b(k,
                function(a, b) {
                    e.push(a + "=" + b)
                }), e.push("d=[" + c.join(",") + "]"), g ? e.push("_st=" + g) : e.push("_t=" + +new Date), f = new Image, f.src = "http://static.tieba.baidu.com/tb/pms/img/st.gif?" + e.join("&"), window["___pms_img_" + 1 * new Date] = f)
            }
        };
        a.prototype = {
            Tb: function(a, b) {
                this.timing[a] = 0 <= b ? b: new Date - this.start
            },
            Cr: function() {
                this.start = +new Date
            },
            AJ: function() {
                this.Tb("tt")
            },
            Uv: function() {
                this.Tb("vt")
            },
            Fl: function() {
                f && (d.push(this), d.get().length >= g && l.send())
            },
            error: s()
        };
        Wa = {
            Ih: {
                MA: function(a) {
                    var b = navigator.RV || navigator.eX || navigator.$X || {
                        type: 0
                    };
                    f = Math.random() <= (a.dT || 0.01);
                    g = a.max || 5;
                    i = a.dX || b.type;
                    k = {
                        p: a.QS,
                        mnt: i,
                        b: 50
                    };
                    window.localStorage && (window.JSON && window.addEventListener) && (e = d.get(n), window.addEventListener("load",
                    function() {
                        l.send(e)
                    },
                    q))
                },
                kj: function(b) {
                    return new a(b)
                }
            }
        }
    })();
    Wa.Ih.MA({
        QS: 18,
        dT: 0.1,
        max: 1
    });
    B.lo = {
        BC: "#83a1ff",
        no: "#808080"
    };
    function Lb(a, b, c) {
        b.wl || (b.wl = [], b.handle = {});
        b.wl.push({
            filter: c,
            Yk: a
        });
        b.addEventListener || (b.addEventListener = function(a, c) {
            b.attachEvent("on" + a, c)
        });
        b.handle.click || (b.addEventListener("click",
        function(a) {
            for (var c = a.target || a.srcElement; c != b;) {
                Mb(b.wl,
                function(b, g) {
                    RegExp(g.filter).test(c.getAttribute("filter")) && g.Yk.call(c, a, c.getAttribute("filter"))
                });
                c = c.parentNode
            }
        },
        q), b.handle.click = n)
    }
    function Mb(a, b) {
        for (var c = 0,
        d = a.length; c < d; c++) b(c, a[c])
    };
    function Nb(a, b) {
        if (b) {
            var c = (1E5 * Math.random()).toFixed(0);
            B._rd["_cbk" + c] = function(a) {
                b && b(a);
                delete B._rd["_cbk" + c]
            };
            a += "&callback=BMap._rd._cbk" + c
        }
        var d = L("script", {
            type: "text/javascript"
        });
        d.charset = "utf-8";
        d.src = a;
        d.addEventListener ? d.addEventListener("load",
        function(a) {
            a = a.target;
            a.parentNode.removeChild(a)
        },
        q) : d.attachEvent && d.attachEvent("onreadystatechange",
        function() {
            var a = window.event.srcElement;
            a && ("loaded" == a.readyState || "complete" == a.readyState) && a.parentNode.removeChild(a)
        });
        setTimeout(function() {
            document.getElementsByTagName("head")[0].appendChild(d);
            d = p
        },
        1)
    };
    var Ob = {
        map: "brzw3w",
        common: "34hf33",
        style: "umm1au",
        tile: "twl1we",
        vectordrawlib: "pxvlet",
        newvectordrawlib: "1acezi",
        groundoverlay: "yammno",
        pointcollection: "4e5mue",
        marker: "cz5kn1",
        symbol: "4oez0k",
        canvablepath: "pp5p2a",
        vmlcontext: "a2cqr2",
        markeranimation: "r2drno",
        poly: "t2f0dr",
        draw: "j5zhzd",
        drawbysvg: "202rtm",
        drawbyvml: "mhei3j",
        drawbycanvas: "545f33",
        infowindow: "tqwszn",
        oppc: "0ksc4a",
        opmb: "dtiene",
        menu: "m5315i",
        control: "xqlb4d",
        navictrl: "nhfrcg",
        geoctrl: "514co0",
        copyrightctrl: "bg3rd5",
        scommon: "n0p10n",
        local: "y1rmod",
        route: "h5rfkk",
        othersearch: "welaqk",
        mapclick: "exxgw4",
        buslinesearch: "wslpqv",
        hotspot: "zmvn4n",
        autocomplete: "grtaip",
        coordtrans: "oh3ywq",
        coordtransutils: "q105qh",
        clayer: "2ggpwl",
        panorama: "erj24s",
        pservice: "o2ii3k",
        pcommon: "liy2lb",
        panoramaflash: "nxs3ax",
        vector: "ly05lu"
    };
    v.Ov = function() {
        function a(a) {
            return d && !!c[b + a + "_" + Ob[a]]
        }
        var b = "BMap_",
        c = window.localStorage,
        d = "localStorage" in window && c !== p && c !== j;
        return {
            YR: d,
            set: function(a, f) {
                if (d) {
                    for (var g = b + a + "_",
                    i = c.length,
                    k; i--;) k = c.key(i),
                    -1 < k.indexOf(g) && c.removeItem(k);
                    try {
                        c.setItem(b + a + "_" + Ob[a], f)
                    } catch(l) {
                        c.clear()
                    }
                }
            },
            get: function(e) {
                return d && a(e) ? c.getItem(b + e + "_" + Ob[e]) : q
            },
            LF: a
        }
    } ();
    function K() {}
    v.object.extend(K, {
        Ji: {
            DC: -1,
            DK: 0,
            fo: 1
        },
        NG: function() {
            var a = "drawbysvg",
            b = "canvablepath",
            c = B.kF ? "newvectordrawlib": "vectordrawlib";
            H() && Kb() ? a = "drawbycanvas": Jb() ? a = "drawbysvg": Ib() ? (a = "drawbyvml", b = "vmlcontext") : Kb() && (a = "drawbycanvas");
            return {
                tile: [c],
                control: [],
                marker: ["symbol"],
                symbol: ["canvablepath", "common"],
                canvablepath: "canvablepath" === b ? [] : [b],
                vmlcontext: [],
                style: [],
                poly: ["marker", a],
                drawbysvg: ["draw"],
                drawbyvml: ["draw"],
                drawbycanvas: ["draw"],
                infowindow: ["common", "marker"],
                menu: [],
                oppc: [],
                opmb: [],
                scommon: [],
                local: ["scommon"],
                route: ["scommon"],
                othersearch: ["scommon"],
                autocomplete: ["scommon"],
                mapclick: ["scommon"],
                buslinesearch: ["route"],
                hotspot: [],
                coordtransutils: ["coordtrans"],
                clayer: ["tile"],
                pservice: [],
                pcommon: ["style", "pservice"],
                panorama: ["pcommon"],
                panoramaflash: ["pcommon"]
            }
        },
        uX: {},
        vC: {
            RK: B.ca + "getmodules?v=2.0&t=20140707",
            CO: 5E3
        },
        mz: q,
        gd: {
            kk: {},
            cm: [],
            it: []
        },
        load: function(a, b, c) {
            var d = this.Ra(a);
            if (d.we == this.Ji.fo) c && b();
            else {
                if (d.we == this.Ji.DC) {
                    this.TF(a);
                    this.II(a);
                    var e = this;
                    e.mz == q && (e.mz = n, setTimeout(function() {
                        for (var a = [], b = 0, c = e.gd.cm.length; b < c; b++) {
                            var d = e.gd.cm[b],
                            l = "";
                            ja.Ov.LF(d) ? l = ja.Ov.get(d) : (l = "", a.push(d + "_" + Ob[d]));
                            e.gd.it.push({
                                bI: d,
                                gB: l
                            })
                        }
                        e.mz = q;
                        e.gd.cm.length = 0;
                        0 == a.length ? e.uG() : Nb(e.vC.RK + "&mod=" + a.join(","))
                    },
                    1));
                    d.we = this.Ji.DK
                }
                d.is.push(b)
            }
        },
        TF: function(a) {
            if (a && this.NG()[a]) for (var a = this.NG()[a], b = 0; b < a.length; b++) this.TF(a[b]),
            this.gd.kk[a[b]] || this.II(a[b])
        },
        II: function(a) {
            for (var b = 0; b < this.gd.cm.length; b++) if (this.gd.cm[b] == a) return;
            this.gd.cm.push(a)
        },
        cT: function(a, b) {
            var c = this.Ra(a);
            try {
                eval(b)
            } catch(d) {
                return
            }
            c.we = this.Ji.fo;
            for (var e = 0,
            f = c.is.length; e < f; e++) c.is[e]();
            c.is.length = 0
        },
        LF: function(a, b) {
            var c = this;
            c.timeout = setTimeout(function() {
                c.gd.kk[a].we != c.Ji.fo ? (c.remove(a), c.load(a, b)) : clearTimeout(c.timeout)
            },
            c.vC.CO)
        },
        Ra: function(a) {
            this.gd.kk[a] || (this.gd.kk[a] = {},
            this.gd.kk[a].we = this.Ji.DC, this.gd.kk[a].is = []);
            return this.gd.kk[a]
        },
        remove: function(a) {
            delete this.Ra(a)
        },
        rP: function(a, b) {
            for (var c = this.gd.it,
            d = n,
            e = 0,
            f = c.length; e < f; e++)"" == c[e].gB && (c[e].bI == a ? c[e].gB = b: d = q);
            d && this.uG()
        },
        uG: function() {
            for (var a = this.gd.it,
            b = 0,
            c = a.length; b < c; b++) this.cT(a[b].bI, a[b].gB);
            this.gd.it.length = 0
        }
    });
    function P(a, b) {
        this.x = a || 0;
        this.y = b || 0;
        this.x = this.x;
        this.y = this.y
    }
    P.prototype.nb = function(a) {
        return a && a.x == this.x && a.y == this.y
    };
    function M(a, b) {
        this.width = a || 0;
        this.height = b || 0
    }
    M.prototype.nb = function(a) {
        return a && this.width == a.width && this.height == a.height
    };
    function db(a, b) {
        a && (this.kb = a, this.Q = "spot" + db.Q++, b = b || {},
        this.cg = b.text || "", this.Ss = b.offsets ? b.offsets.slice(0) : [5, 5, 5, 5], this.gF = b.userData || p, this.Wg = b.minZoom || p, this.Re = b.maxZoom || p)
    }
    db.Q = 0;
    v.extend(db.prototype, {
        ea: function(a) {
            this.Wg == p && (this.Wg = a.F.$c);
            this.Re == p && (this.Re = a.F.Mc)
        },
        ga: function(a) {
            a instanceof J && (this.kb = a)
        },
        U: t("kb"),
        rr: ba("cg"),
        AA: t("cg"),
        setUserData: ba("gF"),
        getUserData: t("gF")
    });
    function R() {
        this.B = p;
        this.tb = "control";
        this.Ea = this.FF = n
    }
    v.lang.ha(R, v.lang.oa, "Control");
    v.extend(R.prototype, {
        initialize: function(a) {
            this.B = a;
            if (this.A) return a.Ga.appendChild(this.A),
            this.A
        },
        se: function(a) { ! this.A && (this.initialize && Ta(this.initialize)) && (this.A = this.initialize(a));
            this.k = this.k || {
                Ag: q
            };
            this.iy();
            this.bt();
            this.A && (this.A.ep = this)
        },
        iy: function() {
            var a = this.A;
            if (a) {
                var b = a.style;
                b.position = "absolute";
                b.zIndex = this.Dw || "10";
                b.MozUserSelect = "none";
                b.WebkitTextSizeAdjust = "none";
                this.k.Ag || v.C.Va(a, "BMap_noprint");
                H() || v.D(a, "contextmenu", na)
            }
        },
        remove: function() {
            this.B = p;
            this.A && (this.A.parentNode && this.A.parentNode.removeChild(this.A), this.A = this.A.ep = p)
        },
        ra: function() {
            this.A = yb(this.B.Ga, "<div unselectable='on'></div>");
            this.Ea == q && v.C.J(this.A);
            return this.A
        },
        bt: function() {
            this.ac(this.k.anchor)
        },
        ac: function(a) {
            if (this.CV || !Sa(a) || isNaN(a) || a < Pb || 3 < a) a = this.defaultAnchor;
            this.k = this.k || {
                Ag: q
            };
            this.k.na = this.k.na || this.defaultOffset;
            var b = this.k.anchor;
            this.k.anchor = a;
            if (this.A) {
                var c = this.A,
                d = this.k.na.width,
                e = this.k.na.height;
                c.style.left = c.style.top = c.style.right = c.style.bottom = "auto";
                switch (a) {
                case Pb:
                    c.style.top = e + "px";
                    c.style.left = d + "px";
                    break;
                case Qb:
                    c.style.top = e + "px";
                    c.style.right = d + "px";
                    break;
                case Rb:
                    c.style.bottom = e + "px";
                    c.style.left = d + "px";
                    break;
                case 3:
                    c.style.bottom = e + "px",
                    c.style.right = d + "px"
                }
                c = ["TL", "TR", "BL", "BR"];
                v.C.Rb(this.A, "anchor" + c[b]);
                v.C.Va(this.A, "anchor" + c[a])
            }
        },
        dA: function() {
            return this.k.anchor
        },
        Sd: function(a) {
            a instanceof M && (this.k = this.k || {
                Ag: q
            },
            this.k.na = new M(a.width, a.height), this.A && this.ac(this.k.anchor))
        },
        ff: function() {
            return this.k.na
        },
        Zc: t("A"),
        show: function() {
            this.Ea != n && (this.Ea = n, this.A && v.C.show(this.A))
        },
        J: function() {
            this.Ea != q && (this.Ea = q, this.A && v.C.J(this.A))
        },
        isPrintable: function() {
            return !! this.k.Ag
        },
        ug: function() {
            return ! this.A && !this.B ? q: !!this.Ea
        }
    });
    var Pb = 0,
    Qb = 1,
    Rb = 2;
    function eb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            Ag: q,
            UB: a.showZoomInfo || n,
            anchor: a.anchor,
            na: a.offset,
            type: a.type,
            nQ: a.enableGeolocation || q
        };
        this.defaultAnchor = H() ? 3 : Pb;
        this.defaultOffset = new M(10, 10);
        this.ac(a.anchor);
        this.Pl(a.type);
        this.Me()
    }
    v.lang.ha(eb, R, "NavigationControl");
    v.extend(eb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        Pl: function(a) {
            this.k.type = Sa(a) && 0 <= a && 3 >= a ? a: 0
        },
        nn: function() {
            return this.k.type
        },
        Me: function() {
            var a = this;
            K.load("navictrl",
            function() {
                a.Vf()
            })
        }
    });
    function Sb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            anchor: a.anchor || Rb,
            na: a.offset || new M(10, 30),
            JX: a.showAddressBar || q,
            eW: a.enableAutoLocation || q,
            TH: a.locationIcon || p
        };
        var b = this;
        this.Dw = 1200;
        b.vU = [];
        this.Hd = [];
        K.load("geoctrl",
        function() { (function d() {
                if (0 !== b.Hd.length) {
                    var a = b.Hd.shift();
                    b[a.method].apply(b, a.arguments);
                    d()
                }
            })();
            b.QK()
        });
        Na(Ia)
    }
    v.lang.ha(Sb, R, "GeolocationControl");
    v.extend(Sb.prototype, {
        location: function() {
            this.Hd.push({
                method: "location",
                arguments: arguments
            })
        },
        getAddressComponent: ca(p)
    });
    function Tb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            Ag: q,
            anchor: a.anchor,
            na: a.offset
        };
        this.Kb = [];
        this.defaultAnchor = Rb;
        this.defaultOffset = new M(5, 2);
        this.ac(a.anchor);
        this.FF = q;
        this.Me()
    }
    v.lang.ha(Tb, R, "CopyrightControl");
    v.object.extend(Tb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        Ft: function(a) {
            if (a && Sa(a.id) && !isNaN(a.id)) {
                var b = {
                    bounds: p,
                    content: ""
                },
                c;
                for (c in a) b[c] = a[c];
                if (a = this.al(a.id)) for (var d in b) a[d] = b[d];
                else this.Kb.push(b)
            }
        },
        al: function(a) {
            for (var b = 0,
            c = this.Kb.length; b < c; b++) if (this.Kb[b].id == a) return this.Kb[b]
        },
        kA: t("Kb"),
        xB: function(a) {
            for (var b = 0,
            c = this.Kb.length; b < c; b++) this.Kb[b].id == a && (r = this.Kb.splice(b, 1), b--, c = this.Kb.length)
        },
        Me: function() {
            var a = this;
            K.load("copyrightctrl",
            function() {
                a.Vf()
            })
        }
    });
    function gb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            Ag: q,
            size: a.size || new M(150, 150),
            padding: 5,
            Ja: a.isOpen === n ? n: q,
            KU: 4,
            na: a.offset,
            anchor: a.anchor
        };
        this.defaultAnchor = 3;
        this.defaultOffset = new M(0, 0);
        this.zo = this.Ao = 13;
        this.ac(a.anchor);
        this.cd(this.k.size);
        this.Me()
    }
    v.lang.ha(gb, R, "OverviewMapControl");
    v.extend(gb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        ac: function(a) {
            R.prototype.ac.call(this, a)
        },
        Jd: function() {
            this.Jd.ym = n;
            this.k.Ja = !this.k.Ja;
            this.A || (this.Jd.ym = q)
        },
        cd: function(a) {
            a instanceof M || (a = new M(150, 150));
            a.width = 0 < a.width ? a.width: 150;
            a.height = 0 < a.height ? a.height: 150;
            this.k.size = a
        },
        Fb: function() {
            return this.k.size
        },
        Ja: function() {
            return this.k.Ja
        },
        Me: function() {
            var a = this;
            K.load("control",
            function() {
                a.Vf()
            })
        }
    });
    function fb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            Ag: q,
            color: "black",
            Hc: "metric",
            na: a.offset
        };
        this.defaultAnchor = Rb;
        this.defaultOffset = new M(81, 18);
        this.ac(a.anchor);
        this.fh = {
            metric: {
                name: "metric",
                VF: 1,
                pH: 1E3,
                CJ: "\u7c73",
                DJ: "\u516c\u91cc"
            },
            us: {
                name: "us",
                VF: 3.2808,
                pH: 5280,
                CJ: "\u82f1\u5c3a",
                DJ: "\u82f1\u91cc"
            }
        };
        this.fh[this.k.Hc] || (this.k.Hc = "metric");
        this.IE = p;
        this.lE = {};
        this.Me()
    }
    v.lang.ha(fb, R, "ScaleControl");
    v.object.extend(fb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        Ij: function(a) {
            this.k.color = a + ""
        },
        mW: function() {
            return this.k.color
        },
        RB: function(a) {
            this.k.Hc = this.fh[a] && this.fh[a].name || this.k.Hc
        },
        uR: function() {
            return this.k.Hc
        },
        Me: function() {
            var a = this;
            K.load("control",
            function() {
                a.Vf()
            })
        }
    });
    var Ub = 0;
    function hb(a) {
        R.call(this);
        a = a || {};
        this.defaultAnchor = Qb;
        this.defaultOffset = new M(10, 10);
        this.k = {
            Ag: q,
            xg: [Ka, Ua, Oa, Ma],
            RP: ["B_DIMENSIONAL_MAP", "B_SATELLITE_MAP", "B_NORMAL_MAP"],
            type: a.type || Ub,
            na: a.offset || this.defaultOffset,
            rQ: n
        };
        this.ac(a.anchor);
        "[object Array]" == Object.prototype.toString.call(a.mapTypes) && (this.k.xg = a.mapTypes.slice(0));
        this.Me()
    }
    v.lang.ha(hb, R, "MapTypeControl");
    v.object.extend(hb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        Pv: function(a) {
            this.B.pm = a
        },
        Me: function() {
            var a = this;
            K.load("control",
            function() {
                a.Vf()
            },
            n)
        }
    });
    function Vb(a) {
        R.call(this);
        a = a || {};
        this.k = {
            Ag: q,
            na: a.offset,
            anchor: a.anchor
        };
        this.Th = q;
        this.kt = p;
        this.tE = new Wb({
            bf: "api"
        });
        this.uE = new S(p, {
            bf: "api"
        });
        this.defaultAnchor = Qb;
        this.defaultOffset = new M(10, 10);
        this.ac(a.anchor);
        this.Me();
        Na(ua)
    }
    v.lang.ha(Vb, R, "PanoramaControl");
    v.extend(Vb.prototype, {
        initialize: function(a) {
            this.B = a;
            return this.A
        },
        Me: function() {
            var a = this;
            K.load("control",
            function() {
                a.Vf()
            })
        }
    });
    function Xb(a) {
        v.lang.oa.call(this);
        this.k = {
            Ga: p,
            cursor: "default"
        };
        this.k = v.extend(this.k, a);
        this.tb = "contextmenu";
        this.B = p;
        this.la = [];
        this.Te = [];
        this.Xd = [];
        this.cu = this.Xp = p;
        this.Ug = q;
        var b = this;
        K.load("menu",
        function() {
            b.wb()
        })
    }
    v.lang.ha(Xb, v.lang.oa, "ContextMenu");
    v.object.extend(Xb.prototype, {
        ea: function(a, b) {
            this.B = a;
            this.ok = b || p
        },
        remove: function() {
            this.B = this.ok = p
        },
        Ht: function(a) {
            if (a && !("menuitem" != a.tb || "" == a.cg || 0 >= a.IO)) {
                for (var b = 0,
                c = this.la.length; b < c; b++) if (this.la[b] === a) return;
                this.la.push(a);
                this.Te.push(a)
            }
        },
        removeItem: function(a) {
            if (a && "menuitem" == a.tb) {
                for (var b = 0,
                c = this.la.length; b < c; b++) this.la[b] === a && (this.la[b].remove(), this.la.splice(b, 1), c--);
                b = 0;
                for (c = this.Te.length; b < c; b++) this.Te[b] === a && (this.Te[b].remove(), this.Te.splice(b, 1), c--)
            }
        },
        By: function() {
            this.la.push({
                tb: "divider",
                Pi: this.Xd.length
            });
            this.Xd.push({
                C: p
            })
        },
        zB: function(a) {
            if (this.Xd[a]) {
                for (var b = 0,
                c = this.la.length; b < c; b++) this.la[b] && ("divider" == this.la[b].tb && this.la[b].Pi == a) && (this.la.splice(b, 1), c--),
                this.la[b] && ("divider" == this.la[b].tb && this.la[b].Pi > a) && this.la[b].Pi--;
                this.Xd.splice(a, 1)
            }
        },
        Zc: t("A"),
        show: function() {
            this.Ug != n && (this.Ug = n)
        },
        J: function() {
            this.Ug != q && (this.Ug = q)
        },
        oT: function(a) {
            a && (this.k.cursor = a)
        },
        getItem: function(a) {
            return this.Te[a]
        }
    });
    var Yb = E.da + "menu_zoom_in.png",
    Zb = E.da + "menu_zoom_out.png";
    function $b(a, b, c) {
        if (a && Ta(b)) {
            v.lang.oa.call(this);
            this.k = {
                width: 100,
                id: "",
                ol: ""
            };
            c = c || {};
            this.k.width = 1 * c.width ? c.width: 100;
            this.k.id = c.id ? c.id: "";
            this.k.ol = c.iconUrl ? c.iconUrl: "";
            this.cg = a + "";
            this.Fw = b;
            this.B = p;
            this.tb = "menuitem";
            this.Hp = this.Gs = this.A = this.Lg = p;
            this.Pg = n;
            var d = this;
            K.load("menu",
            function() {
                d.wb()
            })
        }
    }
    v.lang.ha($b, v.lang.oa, "MenuItem");
    v.object.extend($b.prototype, {
        ea: function(a, b) {
            this.B = a;
            this.Lg = b
        },
        remove: function() {
            this.B = this.Lg = p
        },
        rr: function(a) {
            a && (this.cg = a + "")
        },
        Hb: function(a) {
            a && (this.k.ol = a)
        },
        Zc: t("A"),
        enable: function() {
            this.Pg = n
        },
        disable: function() {
            this.Pg = q
        }
    });
    function ab(a, b) {
        a && !b && (b = a);
        this.ae = this.$d = this.ee = this.de = this.Bk = this.nk = p;
        a && (this.Bk = new J(a.lng, a.lat), this.nk = new J(b.lng, b.lat), this.ee = a.lng, this.de = a.lat, this.ae = b.lng, this.$d = b.lat)
    }
    v.object.extend(ab.prototype, {
        zi: function() {
            return ! this.Bk || !this.nk
        },
        nb: function(a) {
            return ! (a instanceof ab) || this.zi() ? q: this.le().nb(a.le()) && this.ef().nb(a.ef())
        },
        le: t("Bk"),
        ef: t("nk"),
        CP: function(a) {
            return ! (a instanceof ab) || this.zi() || a.zi() ? q: a.ee > this.ee && a.ae < this.ae && a.de > this.de && a.$d < this.$d
        },
        wa: function() {
            return this.zi() ? p: new J((this.ee + this.ae) / 2, (this.de + this.$d) / 2)
        },
        OA: function(a) {
            if (! (a instanceof ab) || Math.max(a.ee, a.ae) < Math.min(this.ee, this.ae) || Math.min(a.ee, a.ae) > Math.max(this.ee, this.ae) || Math.max(a.de, a.$d) < Math.min(this.de, this.$d) || Math.min(a.de, a.$d) > Math.max(this.de, this.$d)) return p;
            var b = Math.max(this.ee, a.ee),
            c = Math.min(this.ae, a.ae),
            d = Math.max(this.de, a.de),
            a = Math.min(this.$d, a.$d);
            return new ab(new J(b, d), new J(c, a))
        },
        Xt: function(a) {
            return ! (a instanceof J) || this.zi() ? q: a.lng >= this.ee && a.lng <= this.ae && a.lat >= this.de && a.lat <= this.$d
        },
        extend: function(a) {
            if (a instanceof J) {
                var b = a.lng,
                a = a.lat;
                this.Bk || (this.Bk = new J(0, 0));
                this.nk || (this.nk = new J(0, 0));
                if (!this.ee || this.ee > b) this.Bk.lng = this.ee = b;
                if (!this.ae || this.ae < b) this.nk.lng = this.ae = b;
                if (!this.de || this.de > a) this.Bk.lat = this.de = a;
                if (!this.$d || this.$d < a) this.nk.lat = this.$d = a
            }
        },
        aC: function() {
            return this.zi() ? new J(0, 0) : new J(Math.abs(this.ae - this.ee), Math.abs(this.$d - this.de))
        }
    });
    function J(a, b) {
        isNaN(a) && (a = Hb(a), a = isNaN(a) ? 0 : a);
        Va(a) && (a = parseFloat(a));
        isNaN(b) && (b = Hb(b), b = isNaN(b) ? 0 : b);
        Va(b) && (b = parseFloat(b));
        this.lng = a;
        this.lat = b
    }
    J.vH = function(a) {
        return a && 180 >= a.lng && -180 <= a.lng && 74 >= a.lat && -74 <= a.lat
    };
    J.prototype.nb = function(a) {
        return a && this.lat == a.lat && this.lng == a.lng
    };
    function ac() {}
    ac.prototype.vg = function() {
        aa("lngLatToPoint\u65b9\u6cd5\u672a\u5b9e\u73b0")
    };
    ac.prototype.zh = function() {
        aa("pointToLngLat\u65b9\u6cd5\u672a\u5b9e\u73b0")
    };
    function bc() {};
    var $a = {
        XF: function(a, b, c) {
            K.load("coordtransutils",
            function() {
                $a.aP(a, b, c)
            },
            n)
        },
        WF: function(a, b, c) {
            K.load("coordtransutils",
            function() {
                $a.$O(a, b, c)
            },
            n)
        }
    };
    function Q() {}
    Q.prototype = new ac;
    v.extend(Q, {
        gK: 6370996.81,
        HC: [1.289059486E7, 8362377.87, 5591021, 3481989.83, 1678043.12, 0],
        Xr: [75, 60, 45, 30, 15, 0],
        mK: [[1.410526172116255E-8, 8.98305509648872E-6, -1.9939833816331, 200.9824383106796, -187.2403703815547, 91.6087516669843, -23.38765649603339, 2.57121317296198, -0.03801003308653, 1.73379812E7], [ - 7.435856389565537E-9, 8.983055097726239E-6, -0.78625201886289, 96.32687599759846, -1.85204757529826, -59.36935905485877, 47.40033549296737, -16.50741931063887, 2.28786674699375, 1.026014486E7], [ - 3.030883460898826E-8, 8.98305509983578E-6, 0.30071316287616, 59.74293618442277, 7.357984074871, -25.38371002664745, 13.45380521110908, -3.29883767235584, 0.32710905363475, 6856817.37], [ - 1.981981304930552E-8, 8.983055099779535E-6, 0.03278182852591, 40.31678527705744, 0.65659298677277, -4.44255534477492, 0.85341911805263, 0.12923347998204, -0.04625736007561, 4482777.06], [3.09191371068437E-9, 8.983055096812155E-6, 6.995724062E-5, 23.10934304144901, -2.3663490511E-4, -0.6321817810242, -0.00663494467273, 0.03430082397953, -0.00466043876332, 2555164.4], [2.890871144776878E-9, 8.983055095805407E-6, -3.068298E-8, 7.47137025468032, -3.53937994E-6, -0.02145144861037, -1.234426596E-5, 1.0322952773E-4, -3.23890364E-6, 826088.5]],
        EC: [[ - 0.0015702102444, 111320.7020616939, 1704480524535203, -10338987376042340, 26112667856603880, -35149669176653700, 26595700718403920, -10725012454188240, 1800819912950474, 82.5], [8.277824516172526E-4, 111320.7020463578, 6.477955746671607E8, -4.082003173641316E9, 1.077490566351142E10, -1.517187553151559E10, 1.205306533862167E10, -5.124939663577472E9, 9.133119359512032E8, 67.5], [0.00337398766765, 111320.7020202162, 4481351.045890365, -2.339375119931662E7, 7.968221547186455E7, -1.159649932797253E8, 9.723671115602145E7, -4.366194633752821E7, 8477230.501135234, 52.5], [0.00220636496208, 111320.7020209128, 51751.86112841131, 3796837.749470245, 992013.7397791013, -1221952.21711287, 1340652.697009075, -620943.6990984312, 144416.9293806241, 37.5], [ - 3.441963504368392E-4, 111320.7020576856, 278.2353980772752, 2485758.690035394, 6070.750963243378, 54821.18345352118, 9540.606633304236, -2710.55326746645, 1405.483844121726, 22.5], [ - 3.218135878613132E-4, 111320.7020701615, 0.00369383431289, 823725.6402795718, 0.46104986909093, 2351.343141331292, 1.58060784298199, 8.77738589078284, 0.37238884252424, 7.45]],
        rW: function(a, b) {
            if (!a || !b) return 0;
            var c, d, a = this.yb(a);
            if (!a) return 0;
            c = this.Pj(a.lng);
            d = this.Pj(a.lat);
            b = this.yb(b);
            return ! b ? 0 : this.Ce(c, this.Pj(b.lng), d, this.Pj(b.lat))
        },
        an: function(a, b) {
            if (!a || !b) return 0;
            a.lng = this.sA(a.lng, -180, 180);
            a.lat = this.xA(a.lat, -74, 74);
            b.lng = this.sA(b.lng, -180, 180);
            b.lat = this.xA(b.lat, -74, 74);
            return this.Ce(this.Pj(a.lng), this.Pj(b.lng), this.Pj(a.lat), this.Pj(b.lat))
        },
        yb: function(a) {
            if (a === p || a === j) return new J(0, 0);
            var b, c;
            b = new J(Math.abs(a.lng), Math.abs(a.lat));
            for (var d = 0; d < this.HC.length; d++) if (b.lat >= this.HC[d]) {
                c = this.mK[d];
                break
            }
            a = this.YF(a, c);
            return a = new J(a.lng.toFixed(6), a.lat.toFixed(6))
        },
        xb: function(a) {
            if (a === p || a === j || 180 < a.lng || -180 > a.lng || 90 < a.lat || -90 > a.lat) return new J(0, 0);
            var b, c;
            a.lng = this.sA(a.lng, -180, 180);
            a.lat = this.xA(a.lat, -74, 74);
            b = new J(a.lng, a.lat);
            for (var d = 0; d < this.Xr.length; d++) if (b.lat >= this.Xr[d]) {
                c = this.EC[d];
                break
            }
            if (!c) for (d = this.Xr.length - 1; 0 <= d; d--) if (b.lat <= -this.Xr[d]) {
                c = this.EC[d];
                break
            }
            a = this.YF(a, c);
            return a = new J(a.lng.toFixed(2), a.lat.toFixed(2))
        },
        YF: function(a, b) {
            if (a && b) {
                var c = b[0] + b[1] * Math.abs(a.lng),
                d = Math.abs(a.lat) / b[9],
                d = b[2] + b[3] * d + b[4] * d * d + b[5] * d * d * d + b[6] * d * d * d * d + b[7] * d * d * d * d * d + b[8] * d * d * d * d * d * d,
                c = c * (0 > a.lng ? -1 : 1),
                d = d * (0 > a.lat ? -1 : 1);
                return new J(c, d)
            }
        },
        Ce: function(a, b, c, d) {
            return this.gK * Math.acos(Math.sin(c) * Math.sin(d) + Math.cos(c) * Math.cos(d) * Math.cos(b - a))
        },
        Pj: function(a) {
            return Math.PI * a / 180
        },
        PX: function(a) {
            return 180 * a / Math.PI
        },
        xA: function(a, b, c) {
            b != p && (a = Math.max(a, b));
            c != p && (a = Math.min(a, c));
            return a
        },
        sA: function(a, b, c) {
            for (; a > c;) a -= c - b;
            for (; a < b;) a += c - b;
            return a
        }
    });
    v.extend(Q.prototype, {
        tl: function(a) {
            return Q.xb(a)
        },
        vg: function(a) {
            a = Q.xb(a);
            return new P(a.lng, a.lat)
        },
        zj: function(a) {
            return Q.yb(a)
        },
        zh: function(a) {
            a = new J(a.x, a.y);
            return Q.yb(a)
        },
        Nb: function(a, b, c, d, e) {
            if (a) return a = this.tl(a, e),
            b = this.dc(b),
            new P(Math.round((a.lng - c.lng) / b + d.width / 2), Math.round((c.lat - a.lat) / b + d.height / 2))
        },
        ib: function(a, b, c, d, e) {
            if (a) return b = this.dc(b),
            this.zj(new J(c.lng + b * (a.x - d.width / 2), c.lat - b * (a.y - d.height / 2)), e)
        },
        dc: function(a) {
            return Math.pow(2, 18 - a)
        }
    });
    function cb() {
        this.dz = "bj"
    }
    cb.prototype = new Q;
    v.extend(cb.prototype, {
        tl: function(a, b) {
            return this.tL(b, Q.xb(a))
        },
        zj: function(a, b) {
            return Q.yb(this.uL(b, a))
        },
        lngLatToPointFor3D: function(a, b) {
            var c = this,
            d = Q.xb(a);
            K.load("coordtrans",
            function() {
                var a = bc.uA(c.dz || "bj", d),
                a = new P(a.x, a.y);
                b && b(a)
            },
            n)
        },
        pointToLngLatFor3D: function(a, b) {
            var c = this,
            d = new J(a.x, a.y);
            K.load("coordtrans",
            function() {
                var a = bc.tA(c.dz || "bj", d),
                a = new J(a.lng, a.lat),
                a = Q.yb(a);
                b && b(a)
            },
            n)
        },
        tL: function(a, b) {
            if (K.Ra("coordtrans").we == K.Ji.fo) {
                var c = bc.uA(a || "bj", b);
                return new J(c.x, c.y)
            }
            K.load("coordtrans", s());
            return new J(0, 0)
        },
        uL: function(a, b) {
            if (K.Ra("coordtrans").we == K.Ji.fo) {
                var c = bc.tA(a || "bj", b);
                return new J(c.lng, c.lat)
            }
            K.load("coordtrans", s());
            return new J(0, 0)
        },
        dc: function(a) {
            return Math.pow(2, 20 - a)
        }
    });
    function cc() {
        this.tb = "overlay"
    }
    v.lang.ha(cc, v.lang.oa, "Overlay");
    cc.jl = function(a) {
        a *= 1;
        return ! a ? 0 : -1E5 * a << 1
    };
    v.extend(cc.prototype, {
        se: function(a) {
            if (!this.K && Ta(this.initialize) && (this.K = this.initialize(a))) this.K.style.WebkitUserSelect = "none";
            this.draw()
        },
        initialize: function() {
            aa("initialize\u65b9\u6cd5\u672a\u5b9e\u73b0")
        },
        draw: function() {
            aa("draw\u65b9\u6cd5\u672a\u5b9e\u73b0")
        },
        remove: function() {
            this.K && this.K.parentNode && this.K.parentNode.removeChild(this.K);
            this.K = p;
            this.dispatchEvent(new N("onremove"))
        },
        J: function() {
            this.K && v.C.J(this.K)
        },
        show: function() {
            this.K && v.C.show(this.K)
        },
        ug: function() {
            return ! this.K || "none" == this.K.style.display || "hidden" == this.K.style.visibility ? q: n
        }
    });
    B.oe(function(a) {
        function b(a, b) {
            var c = L("div"),
            g = c.style;
            g.position = "absolute";
            g.top = g.left = g.width = g.height = "0";
            g.zIndex = b;
            a.appendChild(c);
            return c
        }
        var c = a.G;
        c.Ie = a.Ie = b(a.platform, 200);
        a.Gd.Zz = b(c.Ie, 800);
        a.Gd.eB = b(c.Ie, 700);
        a.Gd.BG = b(c.Ie, 600);
        a.Gd.$A = b(c.Ie, 500);
        a.Gd.YH = b(c.Ie, 400);
        a.Gd.ZH = b(c.Ie, 300);
        a.Gd.CU = b(c.Ie, 201);
        a.Gd.Tq = b(c.Ie, 200)
    });
    function bb() {
        v.lang.oa.call(this);
        cc.call(this);
        this.map = p;
        this.Ea = n;
        this.fb = p;
        this.oD = 0
    }
    v.lang.ha(bb, cc, "OverlayInternal");
    v.extend(bb.prototype, {
        initialize: function(a) {
            this.map = a;
            v.lang.oa.call(this, this.Q);
            return p
        },
        zu: t("map"),
        draw: s(),
        remove: function() {
            this.map = p;
            v.lang.eu(this.Q);
            cc.prototype.remove.call(this)
        },
        J: function() {
            this.Ea != q && (this.Ea = q)
        },
        show: function() {
            this.Ea != n && (this.Ea = n)
        },
        ug: function() {
            return ! this.K ? q: !!this.Ea
        },
        Ba: t("K"),
        VI: function(a) {
            var a = a || {},
            b;
            for (b in a) this.z[b] = a[b]
        },
        sr: ba("zIndex"),
        pi: function() {
            this.z.pi = n
        },
        $P: function() {
            this.z.pi = q
        },
        Gm: ba("Bf"),
        In: function() {
            this.Bf = p
        }
    });
    function dc() {
        this.map = p;
        this.ma = {};
        this.Wd = []
    }
    B.oe(function(a) {
        var b = new dc;
        b.map = a;
        a.ma = b.ma;
        a.Wd = b.Wd;
        a.addEventListener("load",
        function(a) {
            b.draw(a)
        });
        a.addEventListener("moveend",
        function(a) {
            b.draw(a)
        });
        v.R.aa && 8 > v.R.aa || "BackCompat" == document.compatMode ? a.addEventListener("zoomend",
        function(a) {
            setTimeout(function() {
                b.draw(a)
            },
            20)
        }) : a.addEventListener("zoomend",
        function(a) {
            b.draw(a)
        });
        a.addEventListener("maptypechange",
        function(a) {
            b.draw(a)
        });
        a.addEventListener("addoverlay",
        function(a) {
            a = a.target;
            if (a instanceof bb) b.ma[a.Q] || (b.ma[a.Q] = a);
            else {
                for (var d = q,
                e = 0,
                f = b.Wd.length; e < f; e++) if (b.Wd[e] === a) {
                    d = n;
                    break
                }
                d || b.Wd.push(a)
            }
        });
        a.addEventListener("removeoverlay",
        function(a) {
            a = a.target;
            if (a instanceof bb) delete b.ma[a.Q];
            else for (var d = 0,
            e = b.Wd.length; d < e; d++) if (b.Wd[d] === a) {
                b.Wd.splice(d, 1);
                break
            }
        });
        a.addEventListener("clearoverlays",
        function() {
            this.Cc();
            for (var a in b.ma) b.ma[a].z.pi && (b.ma[a].remove(), delete b.ma[a]);
            a = 0;
            for (var d = b.Wd.length; a < d; a++) b.Wd[a].pi != q && (b.Wd[a].remove(), b.Wd[a] = p, b.Wd.splice(a, 1), a--, d--)
        });
        a.addEventListener("infowindowopen",
        function() {
            var a = this.fb;
            a && (v.C.J(a.Zb), v.C.J(a.Ib))
        });
        a.addEventListener("movestart",
        function() {
            this.pg() && this.pg().PE()
        });
        a.addEventListener("moveend",
        function() {
            this.pg() && this.pg().FE()
        })
    });
    dc.prototype.draw = function(a) {
        if (B.ko) {
            var b = B.ko.tq(this.map);
            "canvas" == b.tb && b.canvas && b.pL(b.canvas.getContext("2d"))
        }
        for (var c in this.ma) this.ma[c].draw(a);
        v.Wb.Db(this.Wd,
        function(a) {
            a.draw()
        });
        this.map.G.Wa && this.map.G.Wa.ga();
        B.ko && b.OB()
    };
    function ec(a) {
        bb.call(this);
        a = a || {};
        this.z = {
            strokeColor: a.strokeColor || "#3a6bdb",
            nc: a.strokeWeight || 5,
            Bd: a.strokeOpacity || 0.65,
            strokeStyle: a.strokeStyle || "solid",
            pi: a.enableMassClear === q ? q: n,
            sj: p,
            dl: p,
            af: a.enableEditing === n ? n: q,
            gI: 5,
            uU: q,
            ye: a.enableClicking === q ? q: n,
            ph: a.icons && 0 < a.icons.length ? a.icons: p
        };
        0 >= this.z.nc && (this.z.nc = 5);
        if (0 > this.z.Bd || 1 < this.z.Bd) this.z.Bd = 0.65;
        if (0 > this.z.jg || 1 < this.z.jg) this.z.jg = 0.65;
        "solid" != this.z.strokeStyle && "dashed" != this.z.strokeStyle && (this.z.strokeStyle = "solid");
        this.K = p;
        this.Cw = new ab(0, 0);
        this.ve = [];
        this.Sb = [];
        this.Ca = {}
    }
    v.lang.ha(ec, bb, "Graph");
    ec.vu = function(a) {
        var b = [];
        if (!a) return b;
        Va(a) && v.Wb.Db(a.split(";"),
        function(a) {
            a = a.split(",");
            b.push(new J(a[0], a[1]))
        });
        "[object Array]" == Object.prototype.toString.apply(a) && 0 < a.length && (b = a);
        return b
    };
    ec.nB = [0.09, 0.0050, 1.0E-4, 1.0E-5];
    v.extend(ec.prototype, {
        initialize: function(a) {
            this.map = a;
            return p
        },
        draw: s(),
        Cp: function(a) {
            this.ve.length = 0;
            this.W = ec.vu(a).slice(0);
            this.Hg()
        },
        Td: function(a) {
            this.Cp(a)
        },
        Hg: function() {
            if (this.W) {
                var a = this;
                a.Cw = new ab;
                v.Wb.Db(this.W,
                function(b) {
                    a.Cw.extend(b)
                })
            }
        },
        Md: t("W"),
        Nl: function(a, b) {
            b && this.W[a] && (this.ve.length = 0, this.W[a] = new J(b.lng, b.lat), this.Hg())
        },
        setStrokeColor: function(a) {
            this.z.strokeColor = a
        },
        kR: function() {
            return this.z.strokeColor
        },
        qr: function(a) {
            0 < a && (this.z.nc = a)
        },
        $G: function() {
            return this.z.nc
        },
        or: function(a) {
            a == j || (1 < a || 0 > a) || (this.z.Bd = a)
        },
        lR: function() {
            return this.z.Bd
        },
        Cv: function(a) {
            1 < a || 0 > a || (this.z.jg = a)
        },
        MQ: function() {
            return this.z.jg
        },
        pr: function(a) {
            "solid" != a && "dashed" != a || (this.z.strokeStyle = a)
        },
        ZG: function() {
            return this.z.strokeStyle
        },
        setFillColor: function(a) {
            this.z.fillColor = a || ""
        },
        LQ: function() {
            return this.z.fillColor
        },
        cf: t("Cw"),
        remove: function() {
            this.map && this.map.removeEventListener("onmousemove", this.Ds);
            bb.prototype.remove.call(this);
            this.ve.length = 0
        },
        af: function() {
            if (! (2 > this.W.length)) {
                this.z.af = n;
                var a = this;
                K.load("poly",
                function() {
                    a.Gk()
                },
                n)
            }
        },
        ZP: function() {
            this.z.af = q;
            var a = this;
            K.load("poly",
            function() {
                a.ij()
            },
            n)
        }
    });
    function fc(a) {
        bb.call(this);
        this.K = this.map = p;
        this.z = {
            width: 0,
            height: 0,
            na: new M(0, 0),
            opacity: 1,
            background: "transparent",
            Xu: 1,
            KH: "#000",
            fS: "solid",
            point: p
        };
        this.VI(a);
        this.point = this.z.point
    }
    v.lang.ha(fc, bb, "Division");
    v.extend(fc.prototype, {
        Yj: function() {
            var a = this.z,
            b = this.content,
            c = ['<div class="BMap_Division" style="position:absolute;'];
            c.push("width:" + a.width + "px;display:block;");
            c.push("overflow:hidden;");
            "none" != a.borderColor && c.push("border:" + a.Xu + "px " + a.fS + " " + a.KH + ";");
            c.push("opacity:" + a.opacity + "; filter:(opacity=" + 100 * a.opacity + ")");
            c.push("background:" + a.background + ";");
            c.push('z-index:60;">');
            c.push(b);
            c.push("</div>");
            this.K = yb(this.map.gf().eB, c.join(""))
        },
        initialize: function(a) {
            this.map = a;
            this.Yj();
            this.K && v.D(this.K, H() ? "touchstart": "mousedown",
            function(a) {
                ma(a)
            });
            return this.K
        },
        draw: function() {
            var a = this.map.ne(this.z.point);
            this.z.na = new M( - Math.round(this.z.width / 2) - Math.round(this.z.Xu), -Math.round(this.z.height / 2) - Math.round(this.z.Xu));
            this.K.style.left = a.x + this.z.na.width + "px";
            this.K.style.top = a.y + this.z.na.height + "px"
        },
        U: function() {
            return this.z.point
        },
        iV: function() {
            return this.map.Nb(this.U())
        },
        ga: function(a) {
            this.z.point = a;
            this.draw()
        },
        pT: function(a, b) {
            this.z.width = Math.round(a);
            this.z.height = Math.round(b);
            this.K && (this.K.style.width = this.z.width + "px", this.K.style.height = this.z.height + "px", this.draw())
        }
    });
    function gc(a, b, c) {
        a && b && (this.imageUrl = a, this.size = b, a = new M(Math.floor(b.width / 2), Math.floor(b.height / 2)), c = c || {},
        a = c.anchor || a, b = c.imageOffset || new M(0, 0), this.imageSize = c.imageSize, this.anchor = a, this.imageOffset = b, this.infoWindowAnchor = c.infoWindowAnchor || this.anchor, this.printImageUrl = c.printImageUrl || "")
    }
    v.extend(gc.prototype, {
        xT: function(a) {
            a && (this.imageUrl = a)
        },
        HT: function(a) {
            a && (this.printImageUrl = a)
        },
        cd: function(a) {
            a && (this.size = new M(a.width, a.height))
        },
        ac: function(a) {
            a && (this.anchor = new M(a.width, a.height))
        },
        jr: function(a) {
            a && (this.imageOffset = new M(a.width, a.height))
        },
        zT: function(a) {
            a && (this.infoWindowAnchor = new M(a.width, a.height))
        },
        vT: function(a) {
            a && (this.imageSize = new M(a.width, a.height))
        },
        toString: ca("Icon")
    });
    function hc(a, b) {
        if (a) {
            b = b || {};
            this.style = {
                anchor: b.anchor || new M(0, 0),
                fillColor: b.fillColor || "#000",
                jg: b.fillOpacity || 0,
                scale: b.scale || 1,
                rotation: b.rotation || 0,
                strokeColor: b.strokeColor || "#000",
                Bd: b.strokeOpacity || 1,
                nc: b.strokeWeight
            };
            this.tb = "number" === typeof a ? a: "UserDefined";
            this.Lh = this.style.anchor;
            this.kp = new M(0, 0);
            this.anchor = p;
            this.Wx = a;
            var c = this;
            K.load("symbol",
            function() {
                c.em()
            })
        }
    }
    v.extend(hc.prototype, {
        setPath: ba("Wx"),
        setAnchor: function(a) {
            this.Lh = this.style.anchor = a
        },
        setRotation: function(a) {
            this.style.rotation = a
        },
        setScale: function(a) {
            this.style.scale = a
        },
        setStrokeWeight: function(a) {
            this.style.nc = a
        },
        setStrokeColor: function(a) {
            a = v.Sp.$y(a, this.style.Bd);
            this.style.strokeColor = a
        },
        setStrokeOpacity: function(a) {
            this.style.Bd = a
        },
        setFillOpacity: function(a) {
            this.style.jg = a
        },
        setFillColor: function(a) {
            this.style.fillColor = a
        }
    });
    function ic(a, b, c, d) {
        a && (this.Vs = {},
        this.AG = d ? !!d: q, this.zc = [], this.WT = a instanceof hc ? a: p, this.yE = b === j ? n: !!(b.indexOf("%") + 1), this.Wi = isNaN(parseFloat(b)) ? 1 : this.yE ? parseFloat(b) / 100 : parseFloat(b), this.zE = !!(c.indexOf("%") + 1), this.repeat = c != j ? this.zE ? parseFloat(c) / 100 : parseFloat(c) : 0)
    };
    function jc(a, b) {
        v.lang.oa.call(this);
        this.content = a;
        this.map = p;
        b = b || {};
        this.z = {
            width: b.width || 0,
            height: b.height || 0,
            maxWidth: b.maxWidth || 730,
            na: b.offset || new M(0, 0),
            title: b.title || "",
            fB: b.maxContent || "",
            hg: b.enableMaximize || q,
            jq: b.enableAutoPan === q ? q: n,
            Lz: b.enableCloseOnClick === q ? q: n,
            margin: b.margin || [10, 10, 40, 10],
            Vy: b.collisions || [[10, 10], [10, 10], [10, 10], [10, 10]],
            JR: q,
            AS: b.onClosing || ca(n),
            Oz: b.enableMessage === q ? q: n,
            Qz: b.enableParano === n ? n: q,
            message: b.message,
            Sz: b.enableSearchTool === n ? n: q,
            Lu: b.headerContent || ""
        };
        if (0 != this.z.width && (220 > this.z.width && (this.z.width = 220), 730 < this.z.width)) this.z.width = 730;
        if (0 != this.z.height && (60 > this.z.height && (this.z.height = 60), 650 < this.z.height)) this.z.height = 650;
        if (0 != this.z.maxWidth && (220 > this.z.maxWidth && (this.z.maxWidth = 220), 730 < this.z.maxWidth)) this.z.maxWidth = 730;
        this.sd = q;
        this.Hh = E.da;
        this.Na = p;
        var c = this;
        K.load("infowindow",
        function() {
            c.wb()
        })
    }
    v.lang.ha(jc, v.lang.oa, "InfoWindow");
    v.extend(jc.prototype, {
        setWidth: function(a) { ! a && 0 != a || (isNaN(a) || 0 > a) || (0 != a && (220 > a && (a = 220), 730 < a && (a = 730)), this.z.width = a)
        },
        setHeight: function(a) { ! a && 0 != a || (isNaN(a) || 0 > a) || (0 != a && (60 > a && (a = 60), 650 < a && (a = 650)), this.z.height = a)
        },
        YI: function(a) { ! a && 0 != a || (isNaN(a) || 0 > a) || (0 != a && (220 > a && (a = 220), 730 < a && (a = 730)), this.z.maxWidth = a)
        },
        fc: function(a) {
            this.z.title = a
        },
        getTitle: function() {
            return this.z.title
        },
        Gc: ba("content"),
        qj: t("content"),
        lr: function(a) {
            this.z.fB = a + ""
        },
        yd: s(),
        jq: function() {
            this.z.jq = n
        },
        disableAutoPan: function() {
            this.z.jq = q
        },
        enableCloseOnClick: function() {
            this.z.Lz = n
        },
        disableCloseOnClick: function() {
            this.z.Lz = q
        },
        hg: function() {
            this.z.hg = n
        },
        hu: function() {
            this.z.hg = q
        },
        show: function() {
            this.Ea = n
        },
        J: function() {
            this.Ea = q
        },
        close: function() {
            this.J()
        },
        bv: function() {
            this.sd = n
        },
        restore: function() {
            this.sd = q
        },
        ug: function() {
            return this.Ja()
        },
        Ja: ca(q),
        U: function() {
            if (this.Na && this.Na.U) return this.Na.U()
        },
        ff: function() {
            return this.z.na
        }
    });
    Ja.prototype.Yb = function(a, b) {
        if (a instanceof jc && b instanceof J) {
            var c = this.G;
            c.vl ? c.vl.ga(b) : (c.vl = new T(b, {
                icon: new gc(E.da + "blank.gif", {
                    width: 1,
                    height: 1
                }),
                offset: new M(0, 0),
                clickable: q
            }), c.vl.jM = 1);
            this.va(c.vl);
            c.vl.Yb(a)
        }
    };
    Ja.prototype.Cc = function() {
        var a = this.G.Wa || this.G.gk;
        a && a.Na && a.Na.Cc()
    };
    bb.prototype.Yb = function(a) {
        this.map && (this.map.Cc(), a.Ea = n, this.map.G.gk = a, a.Na = this, v.lang.oa.call(a, a.Q))
    };
    bb.prototype.Cc = function() {
        this.map && this.map.G.gk && (this.map.G.gk.Ea = q, v.lang.eu(this.map.G.gk.Q), this.map.G.gk = p)
    };
    function kc(a, b) {
        bb.call(this);
        this.content = a;
        this.K = this.map = p;
        b = b || {};
        this.z = {
            width: 0,
            na: b.offset || new M(0, 0),
            Xn: {
                backgroundColor: "#fff",
                border: "1px solid #f00",
                padding: "1px",
                whiteSpace: "nowrap",
                font: "12px " + E.fontFamily,
                zIndex: "80",
                MozUserSelect: "none"
            },
            position: b.position || p,
            pi: b.enableMassClear === q ? q: n,
            ye: n
        };
        0 > this.z.width && (this.z.width = 0);
        Eb(b.enableClicking) && (this.z.ye = b.enableClicking);
        this.point = this.z.position;
        var c = this;
        K.load("marker",
        function() {
            c.wb()
        })
    }
    v.lang.ha(kc, bb, "Label");
    v.extend(kc.prototype, {
        U: function() {
            return this.Ns ? this.Ns.U() : this.point
        },
        ga: function(a) {
            a instanceof J && !this.Au() && (this.point = this.z.position = new J(a.lng, a.lat))
        },
        Gc: ba("content"),
        NB: function(a) {
            0 <= a && 1 >= a && (this.z.opacity = a)
        },
        Sd: function(a) {
            a instanceof M && (this.z.na = new M(a.width, a.height))
        },
        ff: function() {
            return this.z.na
        },
        dd: function(a) {
            a = a || {};
            this.z.Xn = v.extend(this.z.Xn, a)
        },
        Bh: function(a) {
            return this.dd(a)
        },
        fc: function(a) {
            this.z.title = a || ""
        },
        getTitle: function() {
            return this.z.title
        },
        XI: function(a) {
            this.point = (this.Ns = a) ? this.z.position = a.U() : this.z.position = p
        },
        Au: function() {
            return this.Ns || p
        },
        qj: t("content")
    });
    function lc(a, b) {
        if (0 !== arguments.length) {
            bb.apply(this, arguments);
            b = b || {};
            this.z = {
                Qa: a,
                opacity: b.opacity || 1,
                pl: b.pl || "",
                Um: b.Um || 1,
                Tm: b.Tm || 18
            };
            var c = this;
            K.load("groundoverlay",
            function() {
                c.wb()
            })
        }
    }
    v.lang.ha(lc, bb, "GroundOverlay");
    v.extend(lc.prototype, {
        setBounds: function(a) {
            this.z.Qa = a
        },
        getBounds: function() {
            return this.z.Qa
        },
        setOpacity: function(a) {
            this.z.opacity = a
        },
        getOpacity: function() {
            return this.z.opacity
        },
        setImageURL: function(a) {
            this.z.pl = a
        },
        getImageURL: function() {
            return this.z.pl
        },
        setDispalyOnMinLevel: function(a) {
            this.z.Um = a
        },
        getDispalyOnMinLevel: function() {
            return this.z.Um
        },
        setDispalyOnMaxLevel: function(a) {
            this.z.Tm = a
        },
        getDispalyOnMaxLevel: function() {
            return this.z.Tm
        }
    });
    var mc = 3,
    nc = 4;
    function oc() {
        var a = document.createElement("canvas");
        return ! (!a.getContext || !a.getContext("2d"))
    }
    function pc(a, b) {
        var c = this;
        oc() && (a === j && aa(Error("\u6ca1\u6709\u4f20\u5165points\u6570\u636e")), "[object Array]" !== Object.prototype.toString.call(a) && aa(Error("points\u6570\u636e\u4e0d\u662f\u6570\u7ec4")), b = b || {},
        bb.apply(c, arguments), c.ka = {
            W: a
        },
        c.z = {
            shape: b.shape || mc,
            size: b.size || nc,
            color: b.color || "#fa937e",
            pi: n
        },
        this.Ux = [], this.Hd = [], K.load("pointcollection",
        function() {
            for (var a = 0,
            b; b = c.Ux[a]; a++) c[b.method].apply(c, b.arguments);
            for (a = 0; b = c.Hd[a]; a++) c[b.method].apply(c, b.arguments)
        }))
    }
    v.lang.ha(pc, bb, "PointCollection");
    v.extend(pc.prototype, {
        initialize: function(a) {
            this.Ux && this.Ux.push({
                method: "initialize",
                arguments: arguments
            })
        },
        setPoints: function(a) {
            this.Hd && this.Hd.push({
                method: "setPoints",
                arguments: arguments
            })
        },
        setStyles: function(a) {
            this.Hd && this.Hd.push({
                method: "setStyles",
                arguments: arguments
            })
        },
        clear: function() {
            this.Hd && this.Hd.push({
                method: "clear",
                arguments: arguments
            })
        },
        remove: function() {
            this.Hd && this.Hd.push({
                method: "remove",
                arguments: arguments
            })
        }
    });
    var qc = new gc(E.da + "marker_red_sprite.png", new M(19, 25), {
        anchor: new M(10, 25),
        infoWindowAnchor: new M(10, 0)
    }),
    rc = new gc(E.da + "marker_red_sprite.png", new M(20, 11), {
        anchor: new M(6, 11),
        imageOffset: new M( - 19, -13)
    });
    function T(a, b) {
        bb.call(this);
        b = b || {};
        this.point = a;
        this.wo = this.map = p;
        this.z = {
            na: b.offset || new M(0, 0),
            tg: b.icon || qc,
            Kj: rc,
            title: b.title || "",
            label: p,
            EF: b.baseZIndex || 0,
            ye: n,
            cY: q,
            XA: q,
            pi: b.enableMassClear === q ? q: n,
            kc: q,
            KI: b.raiseOnDrag === n ? n: q,
            QI: q,
            Wc: b.draggingCursor || E.Wc,
            rotation: b.rotation || 0
        };
        b.icon && !b.shadow && (this.z.Kj = p);
        b.enableDragging && (this.z.kc = b.enableDragging);
        Eb(b.enableClicking) && (this.z.ye = b.enableClicking);
        var c = this;
        K.load("marker",
        function() {
            c.wb()
        })
    }
    T.bs = cc.jl( - 90) + 1E6;
    T.zC = T.bs + 1E6;
    v.lang.ha(T, bb, "Marker");
    v.extend(T.prototype, {
        Hb: function(a) {
            if (a instanceof gc || a instanceof hc) this.z.tg = a
        },
        bn: function() {
            return this.z.tg
        },
        Fv: function(a) {
            a instanceof gc && (this.z.Kj = a)
        },
        getShadow: function() {
            return this.z.Kj
        },
        Ll: function(a) {
            this.z.label = a || p
        },
        qA: function() {
            return this.z.label
        },
        kc: function() {
            this.z.kc = n
        },
        qz: function() {
            this.z.kc = q
        },
        U: t("point"),
        ga: function(a) {
            a instanceof J && (this.point = new J(a.lng, a.lat))
        },
        Ch: function(a, b) {
            this.z.XA = !!a;
            a && (this.WC = b || 0)
        },
        fc: function(a) {
            this.z.title = a + ""
        },
        getTitle: function() {
            return this.z.title
        },
        Sd: function(a) {
            a instanceof M && (this.z.na = a)
        },
        ff: function() {
            return this.z.na
        },
        Kl: ba("wo"),
        Vn: function(a) {
            this.z.rotation = a
        },
        XG: function() {
            return this.z.rotation
        }
    });
    function sc(a, b) {
        ec.call(this, b);
        b = b || {};
        this.z.jg = b.fillOpacity ? b.fillOpacity: 0.65;
        this.z.fillColor = "" == b.fillColor ? "": b.fillColor ? b.fillColor: "#fff";
        this.Td(a);
        var c = this;
        K.load("poly",
        function() {
            c.wb()
        })
    }
    v.lang.ha(sc, ec, "Polygon");
    v.extend(sc.prototype, {
        Td: function(a, b) {
            this.Dm = ec.vu(a).slice(0);
            var c = ec.vu(a).slice(0);
            1 < c.length && c.push(new J(c[0].lng, c[0].lat));
            ec.prototype.Td.call(this, c, b)
        },
        Nl: function(a, b) {
            this.Dm[a] && (this.Dm[a] = new J(b.lng, b.lat), this.W[a] = new J(b.lng, b.lat), 0 == a && !this.W[0].nb(this.W[this.W.length - 1]) && (this.W[this.W.length - 1] = new J(b.lng, b.lat)), this.Hg())
        },
        Md: function() {
            var a = this.Dm;
            0 == a.length && (a = this.W);
            return a
        }
    });
    function tc(a, b) {
        ec.call(this, b);
        this.Cp(a);
        var c = this;
        K.load("poly",
        function() {
            c.wb()
        })
    }
    v.lang.ha(tc, ec, "Polyline");
    function uc(a, b, c) {
        this.point = a;
        this.ja = Math.abs(b);
        sc.call(this, [], c)
    }
    uc.nB = [0.01, 1.0E-4, 1.0E-5, 4.0E-6];
    v.lang.ha(uc, sc, "Circle");
    v.extend(uc.prototype, {
        initialize: function(a) {
            this.map = a;
            this.W = this.Bs(this.point, this.ja);
            this.Hg();
            return p
        },
        wa: t("point"),
        lf: function(a) {
            a && (this.point = a)
        },
        VG: t("ja"),
        Ke: function(a) {
            this.ja = Math.abs(a)
        },
        Bs: function(a, b) {
            if (!a || !b || !this.map) return [];
            for (var c = [], d = b / 6378800, e = Math.PI / 180 * a.lat, f = Math.PI / 180 * a.lng, g = 0; 360 > g; g += 9) {
                var i = Math.PI / 180 * g,
                k = Math.asin(Math.sin(e) * Math.cos(d) + Math.cos(e) * Math.sin(d) * Math.cos(i)),
                i = new J(((f - Math.atan2(Math.sin(i) * Math.sin(d) * Math.cos(e), Math.cos(d) - Math.sin(e) * Math.sin(k)) + Math.PI) % (2 * Math.PI) - Math.PI) * (180 / Math.PI), k * (180 / Math.PI));
                c.push(i)
            }
            d = c[0];
            c.push(new J(d.lng, d.lat));
            return c
        }
    });
    var vc = {};
    function wc(a) {
        this.map = a;
        this.ul = [];
        this.mf = [];
        this.Sf = [];
        this.nP = 300;
        this.vB = 0;
        this.Lf = {};
        this.gi = {};
        this.zg = 0;
        this.RA = n;
        this.dG = {};
        this.Ms = this.gm(1);
        this.fe = this.gm(2);
        this.ip = this.gm(3);
        a.platform.appendChild(this.Ms);
        a.platform.appendChild(this.fe);
        a.platform.appendChild(this.ip)
    }
    B.oe(function(a) {
        var b = new wc(a);
        b.ea();
        a.pb = b
    });
    v.extend(wc.prototype, {
        ea: function() {
            var a = this,
            b = a.map;
            b.addEventListener("loadcode",
            function() {
                a.Yu()
            });
            b.addEventListener("addtilelayer",
            function(b) {
                a.eg(b)
            });
            b.addEventListener("removetilelayer",
            function(b) {
                a.Cg(b)
            });
            b.addEventListener("setmaptype",
            function(b) {
                a.Qf(b)
            });
            b.addEventListener("zoomstartcode",
            function(b) {
                a.Ac(b)
            });
            b.addEventListener("setcustomstyles",
            function(b) {
                a.kr(b.target);
                a.Nf(n)
            })
        },
        Yu: function() {
            var a = this;
            if (v.R.aa) try {
                document.execCommand("BackgroundImageCache", q, n)
            } catch(b) {}
            this.loaded || a.Ru();
            a.Nf();
            this.loaded || (this.loaded = n, K.load("tile",
            function() {
                a.PK()
            }))
        },
        Ru: function() {
            for (var a = this.map.ia().fp, b = 0; b < a.length; b++) {
                var c = new xc;
                v.extend(c, a[b]);
                this.ul.push(c);
                c.ea(this.map, this.Ms)
            }
            this.kr()
        },
        gm: function(a) {
            var b = L("div");
            b.style.position = "absolute";
            b.style.overflow = "visible";
            b.style.left = b.style.top = "0";
            b.style.zIndex = a;
            return b
        },
        Wf: function() {
            this.zg--;
            var a = this;
            this.RA && (this.map.dispatchEvent(new N("onfirsttileloaded")), this.RA = q);
            0 == this.zg && (this.Oh && (clearTimeout(this.Oh), this.Oh = p), this.Oh = setTimeout(function() {
                if (a.zg == 0) {
                    a.map.dispatchEvent(new N("ontilesloaded"));
                    a.RA = n
                }
                a.Oh = p
            },
            80))
        },
        BA: function(a, b) {
            return "TILE-" + b.Q + "-" + a[0] + "-" + a[1] + "-" + a[2]
        },
        Ou: function(a) {
            var b = a.ob;
            b && xb(b) && b.parentNode.removeChild(b);
            delete this.Lf[a.name];
            a.loaded || (yc(a), a.ob = p, a.xl = p)
        },
        hl: function(a, b, c) {
            var d = this.map,
            e = d.ia(),
            f = d.za,
            g = d.lc,
            i = e.dc(f),
            k = this.LG(),
            l = k[0],
            m = k[1],
            o = k[2],
            u = k[3],
            w = k[4],
            c = "undefined" != typeof c ? c: 0,
            e = e.k.qb,
            k = d.Q.replace(/^TANGRAM_/, "");
            for (this.uc ? this.uc.length = 0 : this.uc = []; l < o; l++) for (var x = m; x < u; x++) {
                var z = l,
                F = x;
                this.uc.push([z, F]);
                z = k + "_" + b + "_" + z + "_" + F + "_" + f;
                this.dG[z] = z
            }
            this.uc.sort(function(a) {
                return function(b, c) {
                    return 0.4 * Math.abs(b[0] - a[0]) + 0.6 * Math.abs(b[1] - a[1]) - (0.4 * Math.abs(c[0] - a[0]) + 0.6 * Math.abs(c[1] - a[1]))
                }
            } ([w[0] - 1, w[1] - 1]));
            g = [Math.round( - g.lng / i), Math.round(g.lat / i)];
            l = -d.offsetY + d.height / 2;
            a.style.left = -d.offsetX + d.width / 2 + "px";
            a.style.top = l + "px";
            this.ge ? this.ge.length = 0 : this.ge = [];
            l = 0;
            for (d = a.childNodes.length; l < d; l++) x = a.childNodes[l],
            x.bp = q,
            this.ge.push(x);
            if (l = this.zl) for (var A in l) delete l[A];
            else this.zl = {};
            this.he ? this.he.length = 0 : this.he = [];
            l = 0;
            for (d = this.uc.length; l < d; l++) {
                A = this.uc[l][0];
                i = this.uc[l][1];
                x = 0;
                for (m = this.ge.length; x < m; x++) if (o = this.ge[x], o.id == k + "_" + b + "_" + A + "_" + i + "_" + f) {
                    o.bp = n;
                    this.zl[o.id] = o;
                    break
                }
            }
            l = 0;
            for (d = this.ge.length; l < d; l++) o = this.ge[l],
            o.bp || this.he.push(o);
            this.Sl = [];
            x = (e + c) * this.map.F.devicePixelRatio;
            l = 0;
            for (d = this.uc.length; l < d; l++) A = this.uc[l][0],
            i = this.uc[l][1],
            u = A * e + g[0] - c / 2,
            w = ( - 1 - i) * e + g[1] - c / 2,
            z = k + "_" + b + "_" + A + "_" + i + "_" + f,
            m = this.zl[z],
            o = p,
            m ? (o = m.style, o.left = u + "px", o.top = w + "px", m.re || this.Sl.push([A, i, m])) : (0 < this.he.length ? (m = this.he.shift(), m.getContext("2d").clearRect( - c / 2, -c / 2, x, x), o = m.style) : (m = document.createElement("canvas"), o = m.style, o.position = "absolute", o.width = e + c + "px", o.height = e + c + "px", this.Uu() && (o.WebkitTransform = "scale(1.001)"), m.setAttribute("width", x), m.setAttribute("height", x), a.appendChild(m)), m.id = z, o.left = u + "px", o.top = w + "px", -1 < z.indexOf("bg") && (u = "#F3F1EC", this.map.F.Lm && (u = this.map.F.Lm), o.background = u ? u: ""), this.Sl.push([A, i, m])),
            m.style.visibility = "";
            l = 0;
            for (d = this.he.length; l < d; l++) this.he[l].style.visibility = "hidden";
            return this.Sl
        },
        Uu: function() {
            return /M040/i.test(navigator.userAgent)
        },
        LG: function() {
            var a = this.map,
            b = a.ia(),
            c = a.za;
            b.dc(c);
            var c = b.FA(c),
            d = a.lc,
            e = Math.ceil(d.lng / c),
            f = Math.ceil(d.lat / c),
            b = b.k.qb,
            c = [e, f, (d.lng - e * c) / c * b, (d.lat - f * c) / c * b];
            return [c[0] - Math.ceil((a.width / 2 - c[2]) / b), c[1] - Math.ceil((a.height / 2 - c[3]) / b), c[0] + Math.ceil((a.width / 2 + c[2]) / b), c[1] + Math.ceil((a.height / 2 + c[3]) / b), c]
        },
        MT: function(a, b, c, d) {
            var e = this;
            e.MV = b;
            var f = this.map.ia(),
            g = e.BA(a, c),
            i = f.k.qb,
            b = [a[0] * i + b[0], ( - 1 - a[1]) * i + b[1]],
            k = this.Lf[g];
            k && k.ob ? (vb(k.ob, b), d && (d = new P(a[0], a[1]), f = this.map.F.Od ? this.map.F.Od.style: "normal", d = c.getTilesUrl(d, a[2], f), k.loaded = q, zc(k, d)), k.loaded ? this.Wf() : Bc(k,
            function() {
                e.Wf()
            })) : (k = this.gi[g]) && k.ob ? (c.Bb.insertBefore(k.ob, c.Bb.lastChild), this.Lf[g] = k, vb(k.ob, b), d && (d = new P(a[0], a[1]), f = this.map.F.Od ? this.map.F.Od.style: "normal", d = c.getTilesUrl(d, a[2], f), k.loaded = q, zc(k, d)), k.loaded ? this.Wf() : Bc(k,
            function() {
                e.Wf()
            })) : (k = i * Math.pow(2, f.cl() - a[2]), new J(a[0] * k, a[1] * k), d = new P(a[0], a[1]), f = this.map.F.Od ? this.map.F.Od.style: "normal", d = c.getTilesUrl(d, a[2], f), k = new Cc(this, d, b, a, c), Bc(k,
            function() {
                e.Wf()
            }), Dc(k), this.Lf[g] = k)
        },
        Wf: function() {
            this.zg--;
            var a = this;
            0 == this.zg && (this.Oh && (clearTimeout(this.Oh), this.Oh = p), this.Oh = setTimeout(function() {
                if (a.zg == 0) {
                    a.map.dispatchEvent(new N("ontilesloaded"));
                    if (ta) {
                        if (pa && qa && sa) {
                            var b = Xa(),
                            c = a.map.Fb();
                            setTimeout(function() {
                                Na(5030, {
                                    load_script_time: qa - pa,
                                    load_tiles_time: b - sa,
                                    map_width: c.width,
                                    map_height: c.height,
                                    map_size: c.width * c.height
                                })
                            },
                            1E4);
                            C.Tb("img_fisrt_loaded");
                            C.Tb("map_width", c.width);
                            C.Tb("map_height", c.height);
                            C.Tb("map_size", c.width * c.height);
                            C.Fl()
                        }
                        ta = q
                    }
                }
                a.Oh = p
            },
            80))
        },
        BA: function(a, b) {
            return this.map.ia() === Ma ? "TILE-" + b.Q + "-" + this.map.St + "-" + a[0] + "-" + a[1] + "-" + a[2] : "TILE-" + b.Q + "-" + a[0] + "-" + a[1] + "-" + a[2]
        },
        Ou: function(a) {
            var b = a.ob;
            b && (Ec(b), xb(b) && b.parentNode.removeChild(b));
            delete this.Lf[a.name];
            a.loaded || (Ec(b), yc(a), a.ob = p, a.xl = p)
        },
        Nf: function(a) {
            var b = this;
            if (b.map.ia() == Ma) K.load("coordtrans",
            function() {
                b.map.Lb || (b.map.Lb = Ma.pj(b.map.Pm), b.map.St = Ma.JG(b.map.Lb));
                b.iE()
            },
            n);
            else {
                if (a && a) for (var c in this.gi) delete this.gi[c];
                b.iE(a)
            }
        },
        iE: function(a) {
            for (var b = this.ul.concat(this.mf), c = b.length, d = 0; d < c; d++) {
                var e = b[d];
                if (e.$c && l.za < e.$c) break;
                if (e.Nt) {
                    var f = this.Bb = e.Bb;
                    if (a) {
                        var g = f;
                        if (g && g.childNodes) for (var i = g.childNodes.length,
                        k = i - 1; 0 <= k; k--) i = g.childNodes[k],
                        g.removeChild(i),
                        i = p
                    }
                    if (this.map.Jb()) {
                        this.fe.style.display = "block";
                        f.style.display = "none";
                        this.map.dispatchEvent(new N("vectorchanged"), {
                            isvector: n
                        });
                        continue
                    } else f.style.display = "block",
                    this.fe.style.display = "none",
                    this.map.dispatchEvent(new N("vectorchanged"), {
                        isvector: q
                    })
                }
                if (!e.bE && !(e.yn && !this.map.Jb() || e.CH && this.map.Jb())) {
                    var l = this.map,
                    m = l.ia(),
                    f = m.kn(),
                    i = l.za,
                    o = l.lc;
                    m == Ma && o.nb(new J(0, 0)) && (o = l.lc = f.tl(l.Ye, l.Lb));
                    var u = m.dc(i),
                    i = m.FA(i),
                    f = Math.ceil(o.lng / i),
                    g = Math.ceil(o.lat / i),
                    w = m.k.qb,
                    i = [f, g, (o.lng - f * i) / i * w, (o.lat - g * i) / i * w],
                    k = i[0] - Math.ceil((l.width / 2 - i[2]) / w),
                    f = i[1] - Math.ceil((l.height / 2 - i[3]) / w),
                    g = i[0] + Math.ceil((l.width / 2 + i[2]) / w),
                    x = 0;
                    m === Ma && 15 == l.T() && (x = 1);
                    m = i[1] + Math.ceil((l.height / 2 + i[3]) / w) + x;
                    this.BF = new J(o.lng, o.lat);
                    var z = this.Lf,
                    w = -this.BF.lng / u,
                    x = this.BF.lat / u,
                    u = [Math.ceil(w), Math.ceil(x)],
                    o = l.T(),
                    F;
                    for (F in z) {
                        var A = z[F],
                        I = A.info; (I[2] != o || I[2] == o && (k > I[0] || g <= I[0] || f > I[1] || m <= I[1])) && this.Ou(A)
                    }
                    z = -l.offsetX + l.width / 2;
                    A = -l.offsetY + l.height / 2;
                    e.Bb && (e.Bb.style.left = Math.ceil(w + z) - u[0] + "px", e.Bb.style.top = Math.ceil(x + A) - u[1] + "px", e.Bb.style.WebkitTransform = "translate3d(0,0,0)");
                    w = [];
                    for (l.vy = []; k < g; k++) for (x = f; x < m; x++) w.push([k, x]),
                    l.vy.push({
                        x: k,
                        y: x
                    });
                    w.sort(function(a) {
                        return function(b, c) {
                            return 0.4 * Math.abs(b[0] - a[0]) + 0.6 * Math.abs(b[1] - a[1]) - (0.4 * Math.abs(c[0] - a[0]) + 0.6 * Math.abs(c[1] - a[1]))
                        }
                    } ([i[0] - 1, i[1] - 1]));
                    i = w.length;
                    this.zg += i;
                    for (k = 0; k < i; k++) this.MT([w[k][0], w[k][1], o], u, e, a)
                }
            }
        },
        eg: function(a) {
            var b = this,
            c = a.target,
            a = b.map.Jb();
            if (c instanceof Za) a && !c.ql && (c.ea(this.map, this.fe), c.ql = n);
            else if (c.nf && this.map.eg(c.nf), c.yn) {
                for (a = 0; a < b.Sf.length; a++) if (b.Sf[a] == c) return;
                K.load("vector",
                function() {
                    c.ea(b.map, b.fe);
                    b.Sf.push(c)
                },
                n)
            } else {
                for (a = 0; a < b.mf.length; a++) if (b.mf[a] == c) return;
                c.ea(this.map, this.ip);
                b.mf.push(c)
            }
        },
        Cg: function(a) {
            var a = a.target,
            b = this.map.Jb();
            if (a instanceof Za) b && a.ql && (a.remove(), a.ql = q);
            else {
                a.nf && this.map.Cg(a.nf);
                if (a.yn) for (var b = 0,
                c = this.Sf.length; b < c; b++) a == this.Sf[b] && this.Sf.splice(b, 1);
                else {
                    b = 0;
                    for (c = this.mf.length; b < c; b++) a == this.mf[b] && this.mf.splice(b, 1)
                }
                a.remove()
            }
        },
        Qf: function() {
            for (var a = this.ul,
            b = 0,
            c = a.length; b < c; b++) a[b].remove();
            delete this.Bb;
            this.ul = [];
            this.gi = this.Lf = {};
            this.Ru();
            this.Nf()
        },
        Ac: function() {
            var a = this;
            a.Qc && v.C.J(a.Qc);
            setTimeout(function() {
                a.Nf();
                a.map.dispatchEvent(new N("onzoomend"))
            },
            10)
        },
        VX: s(),
        kr: function(a) {
            var b = this.map.ia();
            if (!this.map.Jb() && (a ? this.map.F.TT = a: a = this.map.F.TT, a)) for (var c = p,
            c = "2" == B.Tv ? [B.url.proto + B.url.domain.main_domain_cdn.other[0] + "/"] : [B.url.proto + B.url.domain.main_domain_cdn.baidu[0] + "/", B.url.proto + B.url.domain.main_domain_cdn.baidu[1] + "/", B.url.proto + B.url.domain.main_domain_cdn.baidu[2] + "/"], d = 0, e; e = this.ul[d]; d++) if (e.IT == n) {
                b.k.Mc = 18;
                this.map.rg() && (b.k.Pu = 18);
                e.getTilesUrl = function(b, d) {
                    var e = b.x,
                    k = b.y,
                    l = "customimage/tile?&x=" + e + "&y=" + k + "&z=" + d + "&udt=20141219",
                    l = a.styleStr ? l + ("&styles=" + encodeURIComponent(a.styleStr)) : l + ("&customid=" + a.style);
                    return c[Math.abs(e + k) % c.length] + l
                };
                break
            }
        }
    });
    function Cc(a, b, c, d, e) {
        this.xl = a;
        this.position = c;
        this.js = [];
        this.name = a.BA(d, e);
        this.info = d;
        this.eF = e.Pq();
        d = L("img");
        wb(d);
        d.DG = q;
        var f = d.style,
        a = a.map.ia();
        f.position = "absolute";
        f.border = "none";
        f.width = a.k.qb + "px";
        f.height = a.k.qb + "px";
        f.left = c[0] + "px";
        f.top = c[1] + "px";
        f.maxWidth = "none";
        this.ob = d;
        this.src = b;
        Fc && (this.ob.style.opacity = 0);
        var g = this;
        this.ob.onload = function() {
            B.hS.wL();
            g.loaded = n;
            if (g.xl) {
                var a = g.xl,
                b = a.gi;
                if (!b[g.name]) {
                    a.vB++;
                    b[g.name] = g
                }
                if (g.ob && !xb(g.ob) && e.Bb) {
                    e.Bb.appendChild(g.ob);
                    if (v.R.aa <= 6 && v.R.aa > 0 && g.eF) g.ob.style.cssText = g.ob.style.cssText + (';filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="' + g.src + '",sizingMethod=scale);')
                }
                var c = a.vB - a.nP,
                d;
                for (d in b) {
                    if (c <= 0) break;
                    if (!a.Lf[d]) {
                        b[d].xl = p;
                        var f = b[d].ob;
                        if (f && f.parentNode) {
                            f.parentNode.removeChild(f);
                            Ec(f)
                        }
                        f = p;
                        b[d].ob = p;
                        delete b[d];
                        a.vB--;
                        c--
                    }
                }
                Fc && new ob({
                    Xc: 20,
                    duration: 200,
                    qa: function(a) {
                        if (g.ob && g.ob.style) g.ob.style.opacity = a * 1
                    },
                    finish: function() {
                        g.ob && g.ob.style && delete g.ob.style.opacity
                    }
                });
                yc(g)
            }
        };
        this.ob.onerror = function() {
            yc(g);
            if (g.xl) {
                var a = g.xl.map.ia();
                if (a.k.Tz) {
                    g.error = n;
                    g.ob.src = a.k.Tz;
                    g.ob && !xb(g.ob) && e.Bb.appendChild(g.ob)
                }
            }
        };
        d = p
    }
    function Bc(a, b) {
        a.js.push(b)
    }
    function Dc(a) {
        a.ob.src = 0 < v.R.aa && 6 >= v.R.aa && a.eF ? E.da + "blank.gif": "" !== a.src && a.ob.src == a.src ? a.src + "&t = " + Date.now() : a.src
    }
    function yc(a) {
        for (var b = 0; b < a.js.length; b++) a.js[b]();
        a.js.length = 0
    }
    function Ec(a) {
        if (a) {
            a.onload = a.onerror = p;
            var b = a.attributes,
            c, d, e;
            if (b) {
                d = b.length;
                for (c = 0; c < d; c += 1) e = b[c].name,
                Ta(a[e]) && (a[e] = p)
            }
            if (b = a.children) {
                d = b.length;
                for (c = 0; c < d; c += 1) Ec(a.children[c])
            }
        }
    }
    function zc(a, b) {
        a.src = b;
        Dc(a)
    }
    var Fc = !v.R.aa || 8 < v.R.aa;
    function xc(a) {
        this.En = a || {};
        this.EP = this.En.copyright || p;
        this.qU = this.En.transparentPng || q;
        this.Nt = this.En.baseLayer || q;
        this.zIndex = this.En.zIndex || 0;
        this.Q = xc.UM++
    }
    xc.UM = 0;
    v.lang.ha(xc, v.lang.oa, "TileLayer");
    v.extend(xc.prototype, {
        ea: function(a, b) {
            this.Nt && (this.zIndex = -100);
            this.map = a;
            if (!this.Bb) {
                var c = L("div"),
                d = c.style;
                d.position = "absolute";
                d.overflow = "visible";
                d.zIndex = this.zIndex;
                d.left = Math.ceil( - a.offsetX + a.width / 2) + "px";
                d.top = Math.ceil( - a.offsetY + a.height / 2) + "px";
                b.appendChild(c);
                this.Bb = c
            }
            c = a.ia();
            a.rg() && c == Ka && (c.k.qb = 128, d = function(a) {
                return Math.pow(2, 18 - a) * 2
            },
            c.dc = d, c.k.Rd.dc = d)
        },
        remove: function() {
            this.Bb && this.Bb.parentNode && (this.Bb.innerHTML = "", this.Bb.parentNode.removeChild(this.Bb));
            delete this.Bb
        },
        Pq: t("qU"),
        getTilesUrl: function(a, b) {
            var c = "";
            this.En.tileUrlTemplate && (c = this.En.tileUrlTemplate.replace(/\{X\}/, a.x), c = c.replace(/\{Y\}/, a.y), c = c.replace(/\{Z\}/, b));
            return c
        },
        al: t("EP"),
        ia: function() {
            return this.gb || Ka
        }
    });
    function Gc(a, b) {
        Fb(a) ? b = a || {}: (b = b || {},
        b.databoxId = a);
        this.k = {
            eG: b.databoxId,
            lg: b.geotableId,
            sv: b.q || "",
            Dr: b.tags || "",
            filter: b.filter || "",
            Mv: b.sortby || "",
            RT: b.styleId || "",
            Hk: b.ak || oa,
            Kt: b.age || 36E5,
            zIndex: 11,
            dS: "VectorCloudLayer",
            xj: b.hotspotName || "vector_md_" + (1E5 * Math.random()).toFixed(0),
            UO: "LBS\u4e91\u9ebb\u70b9\u5c42"
        };
        this.yn = n;
        xc.call(this, this.k);
        this.UP = B.pc + "geosearch/detail/";
        this.VP = B.pc + "geosearch/v2/detail/";
        this.un = {}
    }
    v.ha(Gc, xc, "VectorCloudLayer");
    function Hc(a) {
        a = a || {};
        this.k = v.extend(a, {
            zIndex: 1,
            dS: "VectorTrafficLayer",
            UO: "\u77e2\u91cf\u8def\u51b5\u5c42"
        });
        this.yn = n;
        xc.call(this, this.k);
        this.oU = B.url.proto + B.url.domain.vector_traffic + "/gvd/?qt=lgvd&styles=pl&layers=tf";
        this.mb = {
            "0": [2, 1354709503, 2, 2, 0, [], 0, 0],
            1 : [2, 1354709503, 3, 2, 0, [], 0, 0],
            10 : [2, -231722753, 2, 2, 0, [], 0, 0],
            11 : [2, -231722753, 3, 2, 0, [], 0, 0],
            12 : [2, -231722753, 4, 2, 0, [], 0, 0],
            13 : [2, -231722753, 5, 2, 0, [], 0, 0],
            14 : [2, -231722753, 6, 2, 0, [], 0, 0],
            15 : [2, -1, 4, 0, 0, [], 0, 0],
            16 : [2, -1, 5.5, 0, 0, [], 0, 0],
            17 : [2, -1, 7, 0, 0, [], 0, 0],
            18 : [2, -1, 8.5, 0, 0, [], 0, 0],
            19 : [2, -1, 10, 0, 0, [], 0, 0],
            2 : [2, 1354709503, 4, 2, 0, [], 0, 0],
            3 : [2, 1354709503, 5, 2, 0, [], 0, 0],
            4 : [2, 1354709503, 6, 2, 0, [], 0, 0],
            5 : [2, -6350337, 2, 2, 0, [], 0, 0],
            6 : [2, -6350337, 3, 2, 0, [], 0, 0],
            7 : [2, -6350337, 4, 2, 0, [], 0, 0],
            8 : [2, -6350337, 5, 2, 0, [], 0, 0],
            9 : [2, -6350337, 6, 2, 0, [], 0, 0]
        }
    }
    v.ha(Hc, xc, "VectorTrafficLayer");
    function Za(a) {
        this.oP = [B.url.proto + B.url.domain.TILE_ONLINE_URLS[1] + "/gvd/?", B.url.proto + B.url.domain.TILE_ONLINE_URLS[2] + "/gvd/?", B.url.proto + B.url.domain.TILE_ONLINE_URLS[3] + "/gvd/?", B.url.proto + B.url.domain.TILE_ONLINE_URLS[4] + "/gvd/?"];
        this.k = {
            zG: q
        };
        for (var b in a) this.k[b] = a[b];
        this.eh = this.Mg = this.xc = this.A = this.B = p;
        this.IH = 0;
        var c = this;
        K.load("vector",
        function() {
            c.Me()
        })
    }
    v.extend(Za.prototype, {
        ea: function(a, b) {
            this.B = a;
            this.A = b
        },
        remove: function() {
            this.A = this.B = p
        }
    });
    function Ic(a) {
        xc.call(this, a);
        this.k = a || {};
        this.CH = n;
        this.nf = new Hc;
        this.nf.Rv = this;
        if (this.k.predictDate) {
            if (1 > this.k.predictDate.weekday || 7 < this.k.predictDate.weekday) this.k.predictDate = 1;
            if (0 > this.k.predictDate.hour || 23 < this.k.predictDate.hour) this.k.predictDate.hour = 0
        }
        this.BO = B.url.proto + B.url.domain.traffic + ":8002/traffic/"
    }
    Ic.prototype = new xc;
    Ic.prototype.ea = function(a, b) {
        xc.prototype.ea.call(this, a, b);
        this.B = a
    };
    Ic.prototype.Pq = ca(n);
    Ic.prototype.getTilesUrl = function(a, b) {
        var c = "";
        this.k.predictDate ? c = "HistoryService?day=" + (this.k.predictDate.weekday - 1) + "&hour=" + this.k.predictDate.hour + "&t=" + (new Date).getTime() + "&": (c = "TrafficTileService?time=" + (new Date).getTime() + "&", this.B.rg() || (c += "label=web2D&v=016&"));
        return (this.BO + c + "level=" + b + "&x=" + a.x + "&y=" + a.y).replace(/-(\d+)/gi, "M$1")
    };
    var Jc = [B.url.proto + B.url.domain.TILES_YUN_HOST[0] + "/georender/gss", B.url.proto + B.url.domain.TILES_YUN_HOST[1] + "/georender/gss", B.url.proto + B.url.domain.TILES_YUN_HOST[2] + "/georender/gss", B.url.proto + B.url.domain.TILES_YUN_HOST[3] + "/georender/gss"],
    Kc = 100;
    function ib(a, b) {
        xc.call(this);
        var c = this;
        this.CH = n;
        var d = q;
        try {
            document.createElement("canvas").getContext("2d"),
            d = n
        } catch(e) {
            d = q
        }
        d && (this.nf = new Gc(a, b), this.nf.Rv = this);
        Fb(a) ? b = a || {}: (c.Jo = a, b = b || {});
        b.geotableId && (c.yf = b.geotableId);
        b.databoxId && (c.Jo = b.databoxId);
        d = B.pc + "geosearch";
        c.kd = {
            MS: b.pointDensity || Kc,
            GR: d + "/detail/",
            HR: d + "/v2/detail/",
            Kt: b.age || 36E5,
            sv: b.q || "",
            bU: "png",
            QW: [5, 5, 5, 5],
            cS: {
                backgroundColor: "#FFFFD5",
                borderColor: "#808080"
            },
            Hk: b.ak || oa,
            Dr: b.tags || "",
            filter: b.filter || "",
            Mv: b.sortby || "",
            xj: b.hotspotName || "tile_md_" + (1E5 * Math.random()).toFixed(0)
        };
        K.load("clayer",
        function() {
            c.Vd()
        })
    }
    ib.prototype = new xc;
    ib.prototype.ea = function(a, b) {
        xc.prototype.ea.call(this, a, b);
        this.B = a
    };
    ib.prototype.getTilesUrl = function(a, b) {
        var c = a.x,
        d = a.y,
        e = this.kd,
        c = Jc[Math.abs(c + d) % Jc.length] + "/image?grids=" + c + "_" + d + "_" + b + "&q=" + e.sv + "&tags=" + e.Dr + "&filter=" + e.filter + "&sortby=" + e.Mv + "&ak=" + this.kd.Hk + "&age=" + e.Kt + "&page_size=" + e.MS + "&format=" + e.bU;
        this.yf ? c += "&geotable_id=" + this.yf: this.Jo && (c += "&databox_id=" + this.Jo);
        return c
    };
    ib.dO = /^point\(|\)$/ig;
    ib.eO = /\s+/;
    ib.gO = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
    function Lc(a, b, c) {
        this.ue = a;
        this.fp = b instanceof xc ? [b] : b.slice(0);
        c = c || {};
        this.k = {
            cU: c.tips || "",
            aB: "",
            $c: c.minZoom || 3,
            Mc: c.maxZoom || 18,
            ER: c.minZoom || 3,
            Pu: c.maxZoom || 18,
            qb: 256,
            aU: c.textColor || "black",
            Tz: c.errorImageUrl || "",
            Rd: c.projection || new Q
        };
        1 <= this.fp.length && (this.fp[0].Nt = n);
        v.extend(this.k, c)
    }
    v.extend(Lc.prototype, {
        getName: t("ue"),
        Dq: function() {
            return this.k.cU
        },
        xW: function() {
            return this.k.aB
        },
        qR: function() {
            return this.fp[0]
        },
        LW: t("fp"),
        rR: function() {
            return this.k.qb
        },
        dn: function() {
            return this.k.$c
        },
        cl: function() {
            return this.k.Mc
        },
        setMaxZoom: function(a) {
            this.k.Mc = a
        },
        Cq: function() {
            return this.k.aU
        },
        kn: function() {
            return this.k.Rd
        },
        sW: function() {
            return this.k.Tz
        },
        rR: function() {
            return this.k.qb
        },
        dc: function(a) {
            return Math.pow(2, 18 - a)
        },
        FA: function(a) {
            return this.dc(a) * this.k.qb
        }
    });
    var Mc = [B.url.proto + B.url.domain.TILE_BASE_URLS[0] + "/it/", B.url.proto + B.url.domain.TILE_BASE_URLS[1] + "/it/", B.url.proto + B.url.domain.TILE_BASE_URLS[2] + "/it/", B.url.proto + B.url.domain.TILE_BASE_URLS[3] + "/it/", B.url.proto + B.url.domain.TILE_BASE_URLS[4] + "/it/"],
    Nc = [B.url.proto + B.url.domain.TILE_ONLINE_URLS[0] + "/tile/", B.url.proto + B.url.domain.TILE_ONLINE_URLS[1] + "/tile/", B.url.proto + B.url.domain.TILE_ONLINE_URLS[2] + "/tile/", B.url.proto + B.url.domain.TILE_ONLINE_URLS[3] + "/tile/", B.url.proto + B.url.domain.TILE_ONLINE_URLS[4] + "/tile/"],
    Oc = {
        dark: "dl",
        light: "ll",
        normal: "pl"
    },
    Pc = new xc;
    Pc.IT = n;
    Pc.getTilesUrl = function(a, b, c) {
        var d = a.x,
        a = a.y,
        e = "pl",
        f = 1;
        this.map.rg(); ! H() && 2 <= window.devicePixelRatio && (f = 2);
        e = Oc[c];
        return (Nc[Math.abs(d + a) % Nc.length] + "?qt=tile&x=" + (d + "").replace(/-/gi, "M") + "&y=" + (a + "").replace(/-/gi, "M") + "&z=" + b + "&styles=" + e + "&scaler=" + f + (6 == v.R.aa ? "&color_dep=32&colors=50": "") + "&udt=20141103").replace(/-(\d+)/gi, "M$1")
    };
    var Ka = new Lc("\u5730\u56fe", Pc, {
        tips: "\u663e\u793a\u666e\u901a\u5730\u56fe",
        maxZoom: 19
    }),
    Qc = new xc;
    Qc.pJ = [B.url.proto + B.url.domain.TIlE_PERSPECT_URLS[0] + "/resource/mappic/", B.url.proto + B.url.domain.TIlE_PERSPECT_URLS[1] + "/resource/mappic/", B.url.proto + B.url.domain.TIlE_PERSPECT_URLS[2] + "/resource/mappic/", B.url.proto + B.url.domain.TIlE_PERSPECT_URLS[3] + "/resource/mappic/"];
    Qc.getTilesUrl = function(a, b) {
        var c = a.x,
        d = a.y,
        e = 256 * Math.pow(2, 20 - b),
        d = Math.round((9998336 - e * d) / e) - 1;
        return url = this.pJ[Math.abs(c + d) % this.pJ.length] + this.map.Lb + "/" + this.map.St + "/3/lv" + (21 - b) + "/" + c + "," + d + ".jpg"
    };
    var Ma = new Lc("\u4e09\u7ef4", Qc, {
        tips: "\u663e\u793a\u4e09\u7ef4\u5730\u56fe",
        minZoom: 15,
        maxZoom: 20,
        textColor: "white",
        projection: new cb
    });
    Ma.dc = function(a) {
        return Math.pow(2, 20 - a)
    };
    Ma.pj = function(a) {
        if (!a) return "";
        var b = E.Py,
        c;
        for (c in b) if ( - 1 < a.search(c)) return b[c].qv;
        return ""
    };
    Ma.JG = function(a) {
        return {
            bj: 2,
            gz: 1,
            sz: 14,
            sh: 4
        } [a]
    };
    var Rc = new xc({
        Nt: n
    });
    Rc.getTilesUrl = function(a, b) {
        var c = a.x,
        d = a.y;
        return (Mc[Math.abs(c + d) % Mc.length] + "u=x=" + c + ";y=" + d + ";z=" + b + ";v=009;type=sate&fm=46&udt=20141015").replace(/-(\d+)/gi, "M$1")
    };
    var Ua = new Lc("\u536b\u661f", Rc, {
        tips: "\u663e\u793a\u536b\u661f\u5f71\u50cf",
        minZoom: 1,
        maxZoom: 19,
        textColor: "white"
    }),
    Sc = new xc({
        transparentPng: n
    });
    Sc.getTilesUrl = function(a, b) {
        var c = a.x,
        d = a.y;
        return (Nc[Math.abs(c + d) % Nc.length] + "?qt=tile&x=" + (c + "").replace(/-/gi, "M") + "&y=" + (d + "").replace(/-/gi, "M") + "&z=" + b + "&styles=sl" + (6 == v.R.aa ? "&color_dep=32&colors=50": "") + "&udt=20141015").replace(/-(\d+)/gi, "M$1")
    };
    var Oa = new Lc("\u6df7\u5408", [Rc, Sc], {
        tips: "\u663e\u793a\u5e26\u6709\u8857\u9053\u7684\u536b\u661f\u5f71\u50cf",
        labelText: "\u8def\u7f51",
        minZoom: 1,
        maxZoom: 19,
        textColor: "white"
    });
    var Tc = 1,
    U = {};
    window.NU = U;
    function V(a, b) {
        v.lang.oa.call(this);
        this.Tc = {};
        this.Ml(a);
        b = b || {};
        b.$ = b.renderOptions || {};
        this.k = {
            $: {
                Aa: b.$.panel || p,
                map: b.$.map || p,
                fg: b.$.autoViewport || n,
                gr: b.$.selectFirstResult,
                Hq: b.$.highlightMode,
                kc: b.$.enableDragging || q
            },
            iv: b.onSearchComplete || s(),
            tI: b.onMarkersSet || s(),
            sI: b.onInfoHtmlSet || s(),
            vI: b.onResultsHtmlSet || s(),
            rI: b.onGetBusListComplete || s(),
            qI: b.onGetBusLineComplete || s(),
            pI: b.onBusListHtmlSet || s(),
            oI: b.onBusLineHtmlSet || s(),
            kB: b.onPolylinesSet || s(),
            Jn: b.reqFrom || ""
        };
        this.k.$.fg = "undefined" != typeof b && "undefined" != typeof b.renderOptions && "undefined" != typeof b.renderOptions.autoViewport ? b.renderOptions.autoViewport: n;
        this.k.$.Aa = v.gc(this.k.$.Aa)
    }
    v.ha(V, v.lang.oa);
    v.extend(V.prototype, {
        getResults: function() {
            return this.jc ? this.Mh: this.V
        },
        enableAutoViewport: function() {
            this.k.$.fg = n
        },
        disableAutoViewport: function() {
            this.k.$.fg = q
        },
        Ml: function(a) {
            a && (this.Tc.src = a)
        },
        PB: function(a) {
            this.k.iv = a || s()
        },
        setMarkersSetCallback: function(a) {
            this.k.tI = a || s()
        },
        setPolylinesSetCallback: function(a) {
            this.k.kB = a || s()
        },
        setInfoHtmlSetCallback: function(a) {
            this.k.sI = a || s()
        },
        setResultsHtmlSetCallback: function(a) {
            this.k.vI = a || s()
        },
        fl: t("we")
    });
    var Uc = {
        JC: B.pc,
        $a: function(a, b, c, d, e) {
            var f = (1E5 * Math.random()).toFixed(0);
            B._rd["_cbk" + f] = function(b) {
                c = c || {};
                a && a(b, c);
                delete B._rd["_cbk" + f]
            };
            d = d || "";
            b = c && c.GJ ? Db(b, encodeURI) : Db(b, encodeURIComponent);
            this.JC = c && c.ou ? "http://map.baidu.com/": B.pc;
            d = this.JC + d + "?" + b + "&ie=utf-8&oue=1&fromproduct=jsapi";
            e || (d += "&res=api");
            Nb(d + ("&callback=BMap._rd._cbk" + f))
        }
    };
    window.TU = Uc;
    B._rd = {};
    var O = {};
    window.SU = O;
    O.MI = function(a) {
        return a.replace(/<\/?b>/g, "")
    };
    O.HS = function(a) {
        return a.replace(/([1-9]\d*\.\d*|0\.\d*[1-9]\d*|0?\.0+|0|[1-9]\d*),([1-9]\d*\.\d*|0\.\d*[1-9]\d*|0?\.0+|0|[1-9]\d*)(,)/g, "$1,$2;")
    };
    O.IS = function(a, b) {
        return a.replace(RegExp("(((-?\\d+)(\\.\\d+)?),((-?\\d+)(\\.\\d+)?);)(((-?\\d+)(\\.\\d+)?),((-?\\d+)(\\.\\d+)?);){" + b + "}", "ig"), "$1")
    };
    var Vc = 2,
    Wc = 3,
    Xc = 0,
    Yc = "bt",
    Zc = "nav",
    $c = "walk",
    ad = "bl",
    bd = "bsl",
    cd = 14,
    dd = 15,
    ed = 18,
    fd = 20,
    gd = 31;
    B.I = window.Instance = v.lang.rd;
    function hd(a, b, c) {
        v.lang.oa.call(this);
        if (a) {
            this.Ga = "object" == typeof a ? a: v.gc(a);
            this.page = 1;
            this.ad = 100;
            this.CF = "pg";
            this.kf = 4;
            this.HF = b;
            this.update = n;
            a = {
                page: 1,
                pe: 100,
                ad: 100,
                kf: 4,
                CF: "pg",
                update: n
            };
            c || (c = a);
            for (var d in c)"undefined" != typeof c[d] && (this[d] = c[d]);
            this.qa()
        }
    }
    v.extend(hd.prototype, {
        qa: function() {
            this.ea()
        },
        ea: function() {
            this.sP();
            this.Ga.innerHTML = this.LP()
        },
        sP: function() {
            isNaN(parseInt(this.page)) && (this.page = 1);
            isNaN(parseInt(this.ad)) && (this.ad = 1);
            1 > this.page && (this.page = 1);
            1 > this.ad && (this.ad = 1);
            this.page > this.ad && (this.page = this.ad);
            this.page = parseInt(this.page);
            this.ad = parseInt(this.ad)
        },
        BW: function() {
            location.search.match(RegExp("[?&]?" + this.CF + "=([^&]*)[&$]?", "gi"));
            this.page = RegExp.$1
        },
        LP: function() {
            var a = [],
            b = this.page - 1,
            c = this.page + 1;
            a.push('<p style="margin:0;padding:0;white-space:nowrap">');
            if (! (1 > b)) {
                if (this.page >= this.kf) {
                    var d;
                    a.push('<span style="margin-right:3px"><a style="color:#7777cc" href="javascript:void(0)" onclick="{temp1}">\u9996\u9875</a></span>'.replace("{temp1}", "BMap.I('" + this.Q + "').toPage(1);"))
                }
                a.push('<span style="margin-right:3px"><a style="color:#7777cc" href="javascript:void(0)" onclick="{temp2}">\u4e0a\u4e00\u9875</a></span>'.replace("{temp2}", "BMap.I('" + this.Q + "').toPage(" + b + ");"))
            }
            if (this.page < this.kf) d = 0 == this.page % this.kf ? this.page - this.kf - 1 : this.page - this.page % this.kf + 1,
            b = d + this.kf - 1;
            else {
                d = Math.floor(this.kf / 2);
                var e = this.kf % 2 - 1,
                b = this.ad > this.page + d ? this.page + d: this.ad;
                d = this.page - d - e
            }
            this.page > this.ad - this.kf && this.page >= this.kf && (d = this.ad - this.kf + 1, b = this.ad);
            for (e = d; e <= b; e++) 0 < e && (e == this.page ? a.push('<span style="margin-right:3px">' + e + "</span>") : 1 <= e && e <= this.ad && (d = '<span><a style="color:#7777cc;margin-right:3px" href="javascript:void(0)" onclick="{temp3}">[' + e + "]</a></span>", a.push(d.replace("{temp3}", "BMap.I('" + this.Q + "').toPage(" + e + ");"))));
            c > this.ad || a.push('<span><a style="color:#7777cc" href="javascript:void(0)" onclick="{temp4}">\u4e0b\u4e00\u9875</a></span>'.replace("{temp4}", "BMap.I('" + this.Q + "').toPage(" + c + ");"));
            a.push("</p>");
            return a.join("")
        },
        toPage: function(a) {
            a = a ? a: 1;
            "function" == typeof this.HF && (this.HF(a), this.page = a);
            this.update && this.qa()
        }
    });
    function Ya(a, b) {
        V.call(this, a, b);
        b = b || {};
        b.renderOptions = b.renderOptions || {};
        this.Un(b.pageCapacity);
        "undefined" != typeof b.renderOptions.selectFirstResult && !b.renderOptions.selectFirstResult ? this.rz() : this.Nz();
        this.ma = [];
        this.Le = [];
        this.Sa = -1;
        this.La = [];
        var c = this;
        K.load("local",
        function() {
            c.Jw()
        },
        n)
    }
    v.ha(Ya, V, "LocalSearch");
    Ya.io = 10;
    Ya.QU = 1;
    Ya.$l = 100;
    Ya.yC = 2E3;
    Ya.GC = 1E5;
    v.extend(Ya.prototype, {
        search: function(a, b) {
            this.La.push({
                method: "search",
                arguments: [a, b]
            })
        },
        Jl: function(a, b, c) {
            this.La.push({
                method: "searchInBounds",
                arguments: [a, b, c]
            })
        },
        Pn: function(a, b, c, d) {
            this.La.push({
                method: "searchNearby",
                arguments: [a, b, c, d]
            })
        },
        ie: function() {
            delete this.ta;
            delete this.we;
            delete this.V;
            delete this.S;
            this.Sa = -1;
            this.ab();
            this.k.$.Aa && (this.k.$.Aa.innerHTML = "")
        },
        kl: s(),
        Nz: function() {
            this.k.$.gr = n
        },
        rz: function() {
            this.k.$.gr = q
        },
        Un: function(a) {
            this.k.Cj = "number" == typeof a && !isNaN(a) ? 1 > a ? Ya.io: a > Ya.$l ? Ya.io: a: Ya.io
        },
        De: function() {
            return this.k.Cj
        },
        toString: ca("LocalSearch")
    });
    var id = Ya.prototype;
    W(id, {
        clearResults: id.ie,
        setPageCapacity: id.Un,
        getPageCapacity: id.De,
        gotoPage: id.kl,
        searchNearby: id.Pn,
        searchInBounds: id.Jl,
        search: id.search,
        enableFirstResultSelection: id.Nz,
        disableFirstResultSelection: id.rz
    });
    function jd(a, b) {
        V.call(this, a, b)
    }
    v.ha(jd, V, "BaseRoute");
    v.extend(jd.prototype, {
        ie: s()
    });
    function kd(a, b) {
        V.call(this, a, b);
        b = b || {};
        this.nr(b.policy);
        this.Un(b.pageCapacity);
        this.Ed = Yc;
        this.Yr = cd;
        this.Zr = Tc;
        this.ma = [];
        this.Sa = -1;
        this.La = [];
        var c = this;
        K.load("route",
        function() {
            c.Vd()
        })
    }
    kd.$l = 100;
    kd.iK = [0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 1];
    v.ha(kd, jd, "TransitRoute");
    v.extend(kd.prototype, {
        nr: function(a) {
            this.k.Nc = 0 <= a && 4 >= a ? a: 0
        },
        ux: function(a, b) {
            this.La.push({
                method: "_internalSearch",
                arguments: [a, b]
            })
        },
        search: function(a, b) {
            this.La.push({
                method: "search",
                arguments: [a, b]
            })
        },
        Un: function(a) {
            if ("string" == typeof a && (a = parseInt(a), isNaN(a))) {
                this.k.Cj = kd.$l;
                return
            }
            this.k.Cj = "number" != typeof a ? kd.$l: 1 <= a && a <= kd.$l ? Math.round(a) : kd.$l
        },
        toString: ca("TransitRoute"),
        pO: function(a) {
            return a.replace(/\(.*\)/, "")
        }
    });
    var ld = kd.prototype;
    W(ld, {
        _internalSearch: ld.ux
    });
    function md(a, b) {
        V.call(this, a, b);
        this.ma = [];
        this.Sa = -1;
        this.La = [];
        var c = this,
        d = this.k.$;
        1 != d.Hq && 2 != d.Hq && (d.Hq = 1);
        this.Zw = this.k.$.kc ? n: q;
        K.load("route",
        function() {
            c.Vd()
        });
        this.NA && this.NA()
    }
    md.vK = " \u73af\u5c9b \u65e0\u5c5e\u6027\u9053\u8def \u4e3b\u8def \u9ad8\u901f\u8fde\u63a5\u8def \u4ea4\u53c9\u70b9\u5185\u8def\u6bb5 \u8fde\u63a5\u9053\u8def \u505c\u8f66\u573a\u5185\u90e8\u9053\u8def \u670d\u52a1\u533a\u5185\u90e8\u9053\u8def \u6865 \u6b65\u884c\u8857 \u8f85\u8def \u531d\u9053 \u5168\u5c01\u95ed\u9053\u8def \u672a\u5b9a\u4e49\u4ea4\u901a\u533a\u57df POI\u8fde\u63a5\u8def \u96a7\u9053 \u6b65\u884c\u9053 \u516c\u4ea4\u4e13\u7528\u9053 \u63d0\u524d\u53f3\u8f6c\u9053".split(" ");
    v.ha(md, jd, "DWRoute");
    v.extend(md.prototype, {
        search: function(a, b, c) {
            this.La.push({
                method: "search",
                arguments: [a, b, c]
            })
        }
    });
    function nd(a, b) {
        md.call(this, a, b);
        b = b || {};
        this.k.wf = b.enableTraffic || q;
        this.nr(b.policy);
        this.Ed = Zc;
        this.Yr = fd;
        this.Zr = Wc
    }
    v.ha(nd, md, "DrivingRoute");
    nd.prototype.nr = function(a) {
        this.k.Nc = 0 <= a && 2 >= a ? a: 0
    };
    function od(a, b) {
        md.call(this, a, b);
        this.Ed = $c;
        this.Yr = gd;
        this.Zr = Vc;
        this.Zw = q
    }
    v.ha(od, md, "WalkingRoute");
    function pd(a, b) {
        v.lang.oa.call(this);
        this.jf = [];
        this.Cl = [];
        this.k = b;
        this.Mb = a;
        this.map = this.k.$.map || p;
        this.zv = this.k.zv;
        this.fb = p;
        this.ii = 0;
        this.Nv = "";
        this.qd = 1;
        this.pu = "";
        this.Kn = [0, 0, 0, 0, 0, 0, 0];
        this.bB = [];
        this.Wp = [1, 1, 1, 1, 1, 1, 1];
        this.xJ = [1, 1, 1, 1, 1, 1, 1];
        this.er = [0, 0, 0, 0, 0, 0, 0];
        this.Ln = [0, 0, 0, 0, 0, 0, 0];
        this.ya = [{
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        },
        {
            o: "",
            Xe: 0,
            Ul: 0,
            x: 0,
            y: 0,
            cc: -1
        }];
        this.jh = -1;
        this.Fr = [];
        this.Gr = [];
        K.load("route", s())
    }
    v.lang.ha(pd, v.lang.oa, "RouteAddr");
    function qd(a) {
        this.k = {};
        v.extend(this.k, a);
        this.La = [];
        var b = this;
        K.load("othersearch",
        function() {
            b.Vd()
        })
    }
    v.ha(qd, v.lang.oa, "Geocoder");
    v.extend(qd.prototype, {
        el: function(a, b, c) {
            this.La.push({
                method: "getPoint",
                arguments: [a, b, c]
            })
        },
        wq: function(a, b, c) {
            this.La.push({
                method: "getLocation",
                arguments: [a, b, c]
            })
        },
        toString: ca("Geocoder")
    });
    var rd = qd.prototype;
    W(rd, {
        getPoint: rd.el,
        getLocation: rd.wq
    });
    function Geolocation(a) {
        a = a || {};
        this.F = {
            timeout: a.timeout || 1E4,
            maximumAge: a.maximumAge || 6E5
        };
        this.Hd = [];
        var b = this;
        K.load("othersearch",
        function() {
            for (var a = 0,
            d; d = b.Hd[a]; a++) b[d.method].apply(b, d.arguments)
        })
    }
    v.extend(Geolocation.prototype, {
        getCurrentPosition: function(a, b) {
            this.Hd.push({
                method: "getCurrentPosition",
                arguments: arguments
            })
        },
        getStatus: ca(2)
    });
    function sd(a) {
        a = a || {};
        a.$ = a.renderOptions || {};
        this.k = {
            $: {
                map: a.$.map || p
            }
        };
        this.La = [];
        var b = this;
        K.load("othersearch",
        function() {
            b.Vd()
        })
    }
    v.ha(sd, v.lang.oa, "LocalCity");
    v.extend(sd.prototype, {
        get: function(a) {
            this.La.push({
                method: "get",
                arguments: [a]
            })
        },
        toString: ca("LocalCity")
    });
    function td() {
        this.La = [];
        var a = this;
        K.load("othersearch",
        function() {
            a.Vd()
        })
    }
    v.ha(td, v.lang.oa, "Boundary");
    v.extend(td.prototype, {
        get: function(a, b) {
            this.La.push({
                method: "get",
                arguments: [a, b]
            })
        },
        toString: ca("Boundary")
    });
    function ud(a, b) {
        V.call(this, a, b);
        this.sK = ad;
        this.uK = dd;
        this.rK = bd;
        this.tK = ed;
        this.La = [];
        var c = this;
        K.load("buslinesearch",
        function() {
            c.Vd()
        })
    }
    ud.Hs = E.da + "iw_plus.gif";
    ud.YM = E.da + "iw_minus.gif";
    ud.xO = E.da + "stop_icon.png";
    v.ha(ud, V);
    v.extend(ud.prototype, {
        getBusList: function(a) {
            this.La.push({
                method: "getBusList",
                arguments: [a]
            })
        },
        getBusLine: function(a) {
            this.La.push({
                method: "getBusLine",
                arguments: [a]
            })
        },
        setGetBusListCompleteCallback: function(a) {
            this.k.rI = a || s()
        },
        setGetBusLineCompleteCallback: function(a) {
            this.k.qI = a || s()
        },
        setBusListHtmlSetCallback: function(a) {
            this.k.pI = a || s()
        },
        setBusLineHtmlSetCallback: function(a) {
            this.k.oI = a || s()
        },
        setPolylinesSetCallback: function(a) {
            this.k.kB = a || s()
        }
    });
    function vd(a) {
        V.call(this, a);
        a = a || {};
        this.kd = {
            input: a.input || p,
            Gy: a.baseDom || p,
            types: a.types || [],
            iv: a.onSearchComplete || s()
        };
        this.Tc.src = a.location || "\u5168\u56fd";
        this.di = "";
        this.Ef = p;
        this.YD = "";
        this.Sh();
        Na(Ha);
        var b = this;
        K.load("autocomplete",
        function() {
            b.Vd()
        })
    }
    v.ha(vd, V, "Autocomplete");
    v.extend(vd.prototype, {
        Sh: s(),
        show: s(),
        J: s(),
        QB: function(a) {
            this.kd.types = a
        },
        Ml: function(a) {
            this.Tc.src = a
        },
        search: ba("di"),
        Dv: ba("YD")
    });
    var Pa;
    function La(a, b) {
        this.A = "string" == typeof a ? v.N(a) : a;
        this.k = {
            enableScrollWheelZoom: n,
            panoramaRenderer: "flash",
            swfSrc: B.pc + "res/swf/APILoader.swf",
            visible: n,
            linksControl: n,
            navigationControl: n,
            indoorSceneSwitchControl: n,
            albumsControl: q,
            albumsControlOptions: {},
            copyrightControlOptions: {}
        };
        var b = b || {},
        c;
        for (c in b) this.k[c] = b[c];
        this.Fa = {
            heading: p,
            pitch: p
        };
        this.qm = [];
        this.kb = this.Ta = p;
        this.yp = this.ek();
        this.ma = [];
        this.Ac = 1;
        this.Cf = this.oN = this.Qi = "";
        this.be = {};
        this.Ve = p;
        this.Yf = [];
        this.pp = [];
        this.up = q;
        var d = this;
        "flashRender" === this.ek() ? K.load("panoramaflash",
        function() {
            d.Sh()
        },
        n) : K.load("panorama",
        function() {
            d.wb()
        },
        n);
        this.MN(this.A);
        "api" == b.bf ? Na(Ca) : Na(Da);
        this.addEventListener("id_changed",
        function() {
            Na(Ba, {
                from: b.bf
            })
        })
    }
    var wd = 4,
    xd = 1;
    v.lang.ha(La, v.lang.oa, "Panorama");
    v.extend(La.prototype, {
        MN: function(a) {
            var b, c;
            b = a.style;
            c = Ra(a).position;
            "absolute" != c && "relative" != c && (b.position = "relative", b.zIndex = 0);
            if ("absolute" === c || "relative" === c) if (a = Ra(a).zIndex, !a || "auto" === a) b.zIndex = 0
        },
        SQ: t("qm"),
        Eb: t("Ta"),
        sR: t("lt"),
        cJ: t("lt"),
        U: t("kb"),
        Ia: t("Fa"),
        T: t("Ac"),
        ng: t("Qi"),
        EW: function() {
            return this.qV || []
        },
        zW: t("oN"),
        Hu: t("Cf"),
        Ol: function(a) {
            a !== this.Cf && (this.Cf = a, this.dispatchEvent(new N("onscene_type_changed")))
        },
        rc: function(a, b) {
            a != this.Ta && (this.jk = this.Ta, this.Is = this.kb, this.Ta = a, this.Cf = b || "street", this.kb = p)
        },
        ga: function(a) {
            a.nb(this.kb) || (this.jk = this.Ta, this.Is = this.kb, this.kb = a, this.Ta = p)
        },
        zd: function(a) {
            a && (this.Fa = a, a = this.Fa.pitch, "cvsRender" == this.ek() ? (90 < a && (a = 90), -90 > a && (a = -90)) : "cssRender" == this.ek() && (45 < a && (a = 45), -45 > a && (a = -45)), this.up = n, this.Fa.pitch = a)
        },
        Ad: function(a) {
            a != this.Ac && (a > wd && (a = wd), a < xd && (a = xd), a != this.Ac && (this.Ac = a))
        },
        gy: function() {
            if (this.B) for (var a = this.B.vA(), b = 0; b < a.length; b++)(a[b] instanceof T || a[b] instanceof kc) && a[b].point && this.ma.push(a[b])
        },
        MB: ba("B"),
        mr: function(a) {
            this.Ve = a || "none"
        },
        Tn: function(a) {
            for (var b in a) {
                if ("object" == typeof a[b]) for (var c in a[b]) this.k[b][c] = a[b][c];
                else this.k[b] = a[b];
                switch (b) {
                case "linksControl":
                    this.dispatchEvent(new N("onlinks_visible_changed"));
                    break;
                case "navigationControl":
                    this.dispatchEvent(new N("onnavigation_visible_changed"));
                    break;
                case "indoorSceneSwitchControl":
                    this.dispatchEvent(new N("onindoor_default_switch_mode_changed"));
                    break;
                case "albumsControl":
                    this.dispatchEvent(new N("onalbums_visible_changed"));
                    break;
                case "albumsControlOptions":
                    this.dispatchEvent(new N("onalbums_options_changed"));
                    break;
                case "copyrightControlOptions":
                    this.dispatchEvent(new N("oncopyright_options_changed"))
                }
            }
        },
        wj: function() {
            this.pk.style.visibility = "hidden"
        },
        Iv: function() {
            this.pk.style.visibility = "visible"
        },
        qQ: function() {
            this.k.enableScrollWheelZoom = n
        },
        aQ: function() {
            this.k.enableScrollWheelZoom = q
        },
        show: function() {
            this.k.visible = n
        },
        J: function() {
            this.k.visible = q
        },
        ek: function() {
            return Qa() && !H() && "javascript" != this.k.panoramaRenderer ? "flashRender": !H() && Kb() ? "cvsRender": "cssRender"
        },
        va: function(a) {
            this.be[a.Jc] = a
        },
        zb: function(a) {
            delete this.be[a]
        },
        dH: function() {
            return this.k.visible
        },
        mg: function() {
            return new M(this.A.clientWidth, this.A.clientHeight)
        },
        Ba: t("A"),
        GG: function() {
            var a = "http://map.baidu.com/?",
            b = this.Eb();
            if (b) {
                var b = {
                    panotype: this.Hu(),
                    heading: this.Ia().heading,
                    pitch: this.Ia().pitch,
                    pid: b,
                    panoid: b,
                    from: "api"
                },
                c;
                for (c in b) a += c + "=" + b[c] + "&"
            }
            return a.slice(0, -1)
        },
        Mu: function() {
            this.Tn({
                copyrightControlOptions: {
                    logoVisible: q
                }
            })
        },
        TB: function() {
            this.Tn({
                copyrightControlOptions: {
                    logoVisible: n
                }
            })
        },
        Ay: function(a) {
            function b(a, b) {
                return function() {
                    a.pp.push({
                        dI: b,
                        cI: arguments
                    })
                }
            }
            for (var c = a.getPanoMethodList(), d = "", e = 0, f = c.length; e < f; e++) d = c[e],
            this[d] = b(this, d);
            this.Yf.push(a)
        },
        yB: function(a) {
            for (var b = this.Yf.length; b--;) this.Yf[b] === a && this.Yf.splice(b, 1)
        }
    });
    var X = La.prototype;
    W(X, {
        setId: X.rc,
        setPosition: X.ga,
        setPov: X.zd,
        setZoom: X.Ad,
        setOptions: X.Tn,
        getId: X.Eb,
        getPosition: X.U,
        getPov: X.Ia,
        getZoom: X.T,
        getLinks: X.SQ,
        getBaiduMapUrl: X.GG,
        hideMapLogo: X.Mu,
        showMapLogo: X.TB,
        enableDoubleClickZoom: X.gW,
        disableDoubleClickZoom: X.WV,
        enableScrollWheelZoom: X.qQ,
        disableScrollWheelZoom: X.aQ,
        show: X.show,
        hide: X.J,
        addPlugin: X.Ay,
        removePlugin: X.yB,
        getVisible: X.dH,
        addOverlay: X.va,
        removeOverlay: X.zb,
        getSceneType: X.Hu,
        setPanoramaPOIType: X.mr
    });
    W(window, {
        BMAP_PANORAMA_POI_HOTEL: "hotel",
        BMAP_PANORAMA_POI_CATERING: "catering",
        BMAP_PANORAMA_POI_MOVIE: "movie",
        BMAP_PANORAMA_POI_TRANSIT: "transit",
        BMAP_PANORAMA_POI_INDOOR_SCENE: "indoor_scene",
        BMAP_PANORAMA_POI_NONE: "none",
        BMAP_PANORAMA_INDOOR_SCENE: "inter",
        BMAP_PANORAMA_STREET_SCENE: "street"
    });
    function yd() {
        v.lang.oa.call(this);
        this.Jc = "PanoramaOverlay_" + this.Q;
        this.H = p;
        this.Ea = n
    }
    v.lang.ha(yd, v.lang.oa, "PanoramaOverlayBase");
    v.extend(yd.prototype, {
        AW: t("Jc"),
        ea: function() {
            aa("initialize\u65b9\u6cd5\u672a\u5b9e\u73b0")
        },
        remove: function() {
            aa("remove\u65b9\u6cd5\u672a\u5b9e\u73b0")
        },
        $f: function() {
            aa("_setOverlayProperty\u65b9\u6cd5\u672a\u5b9e\u73b0")
        }
    });
    function zd(a, b) {
        yd.call(this);
        var c = {
            position: p,
            altitude: 2
        },
        b = b || {},
        d;
        for (d in b) c[d] = b[d];
        this.kb = c.position;
        this.Ni = a;
        this.vo = c.altitude;
        this.Fa = {
            heading: 0,
            pitch: 0
        }
    }
    v.lang.ha(zd, yd, "PanoramaLabel");
    v.extend(zd.prototype, {
        ga: function(a) {
            this.kb = a;
            this.$f("position", a)
        },
        U: t("kb"),
        Gc: function(a) {
            this.Ni = a;
            this.$f("content", a)
        },
        qj: t("Ni"),
        IB: function(a) {
            this.vo = a;
            this.$f("altitude", a)
        },
        pq: t("vo"),
        Ia: function() {
            var a = p;
            if (this.H) {
                var a = this.H.U(),
                b = this.U(),
                a = Ad(b.lng - a.lng, b.lat - a.lat);
                isNaN(a) && (a = 0);
                a = {
                    heading: a,
                    pitch: 0
                }
            } else a = this.Fa;
            return a
        },
        J: function() {
            aa("hide\u65b9\u6cd5\u672a\u5b9e\u73b0")
        },
        show: function() {
            aa("show\u65b9\u6cd5\u672a\u5b9e\u73b0")
        }
    });
    var Cd = zd.prototype;
    W(Cd, {
        setPosition: Cd.ga,
        getPosition: Cd.U,
        setContent: Cd.Gc,
        getContent: Cd.qj,
        setAltitude: Cd.IB,
        getAltitude: Cd.pq,
        getPov: Cd.Ia,
        show: Cd.show,
        hide: Cd.J
    });
    function Dd(a, b) {
        yd.call(this);
        var c = {
            icon: "",
            title: "",
            panoInfo: p,
            altitude: 2
        },
        b = b || {},
        d;
        for (d in b) c[d] = b[d];
        this.kb = a;
        this.VD = c.icon;
        this.cF = c.title;
        this.vo = c.altitude;
        this.CN = c.panoInfo;
        this.Fa = {
            heading: 0,
            pitch: 0
        }
    }
    v.lang.ha(Dd, yd, "PanoramaMarker");
    v.extend(Dd.prototype, {
        ga: function(a) {
            this.kb = a;
            this.$f("position", a)
        },
        U: t("kb"),
        fc: function(a) {
            this.cF = a;
            this.$f("title", a)
        },
        mn: t("cF"),
        Hb: function(a) {
            this.VD = icon;
            this.$f("icon", a)
        },
        bn: t("VD"),
        IB: function(a) {
            this.vo = a;
            this.$f("altitude", a)
        },
        pq: t("vo"),
        wA: t("CN"),
        Ia: function() {
            var a = p;
            if (this.H) {
                var a = this.H.U(),
                b = this.U(),
                a = Ad(b.lng - a.lng, b.lat - a.lat);
                isNaN(a) && (a = 0);
                a = {
                    heading: a,
                    pitch: 0
                }
            } else a = this.Fa;
            return a
        }
    });
    var Ed = Dd.prototype;
    W(Ed, {
        setPosition: Ed.ga,
        getPosition: Ed.U,
        setTitle: Ed.fc,
        getTitle: Ed.mn,
        setAltitude: Ed.IB,
        getAltitude: Ed.pq,
        getPanoInfo: Ed.wA,
        getIcon: Ed.bn,
        setIcon: Ed.Hb,
        getPov: Ed.Ia
    });
    function Ad(a, b) {
        var c = 180 * (Math.atan(a / b) / Math.PI),
        d = 0;
        0 < a && 0 > b && (d = 90);
        0 > a && 0 > b && (d = 180);
        0 > a && 0 < b && (d = 270);
        return Math.round((c + 90) % 90 + d)
    };
    function S(a, b) {
        this.H = a || p;
        var c = this;
        c.H && c.P();
        K.load("pservice",
        function() {
            c.kL()
        });
        "api" == (b || {}).bf ? Na(Ea) : Na(Ga);
        this.Rc = {
            getPanoramaById: [],
            getPanoramaByLocation: [],
            getVisiblePOIs: [],
            getRecommendPanosById: [],
            getPanoramaVersions: [],
            checkPanoSupportByCityCode: [],
            getPanoramaByPOIId: [],
            getCopyrightProviders: []
        }
    }
    B.Bl(function(a) {
        "flashRender" !== a.ek() && new S(a, {
            bf: "api"
        })
    });
    v.extend(S.prototype, {
        P: function() {
            function a(a) {
                if (a) {
                    if (a.id != b.lt) {
                        b.cJ(a.id);
                        var c = new N("ondataload");
                        c.data = a;
                        b.Ta = a.id;
                        b.kb = a.position;
                        b.nV = a.Dj;
                        b.oV = a.Ej;
                        b.Qi = a.description;
                        b.qm = a.links;
                        b.ka = a;
                        b.dispatchEvent(c);
                        b.dispatchEvent(new N("onposition_changed"));
                        b.dispatchEvent(new N("onlinks_changed"));
                        b.dispatchEvent(new N("oncopyright_changed"), {
                            copyright: a.copyright
                        });
                        a.fj ? v.C.show(b.ax) : v.C.J(b.ax)
                    }
                } else b.Ta = b.jk,
                b.kb = b.Is,
                b.dispatchEvent(new N("onnoresult"))
            }
            var b = this.H,
            c = this;
            b.addEventListener("id_changed",
            function() {
                c.hn(b.Eb(), a)
            });
            b.addEventListener("iid_changed",
            function() {
                c.ah(S.Wj + "qt=idata&iid=" + b.px + "&fn=",
                function(b) {
                    if (b && b.result && 0 == b.result.error) {
                        var b = b.content[0].interinfo,
                        e = {};
                        e.fj = b.BreakID;
                        for (var f = b.Defaultfloor,
                        g = p,
                        i = 0; i < b.Floors.length; i++) if (b.Floors[i].Floor == f) {
                            g = b.Floors[i];
                            break
                        }
                        e.id = g.StartID || g.Points[0].PID;
                        c.hn(e.id, a, e)
                    }
                })
            });
            b.addEventListener("position_changed_inner",
            function() {
                c.si(b.U(), a)
            })
        },
        hn: function(a, b) {
            this.Rc.getPanoramaById.push(arguments)
        },
        si: function(a, b, c) {
            this.Rc.getPanoramaByLocation.push(arguments)
        },
        EA: function(a, b, c, d) {
            this.Rc.getVisiblePOIs.push(arguments)
        },
        Gu: function(a, b) {
            this.Rc.getRecommendPanosById.push(arguments)
        },
        Fu: function(a) {
            this.Rc.getPanoramaVersions.push(arguments)
        },
        Ny: function(a, b) {
            this.Rc.checkPanoSupportByCityCode.push(arguments)
        },
        Eu: function(a, b) {
            this.Rc.getPanoramaByPOIId.push(arguments)
        },
        KG: function(a) {
            this.Rc.getCopyrightProviders.push(arguments)
        }
    });
    var Fd = S.prototype;
    W(Fd, {
        getPanoramaById: Fd.hn,
        getPanoramaByLocation: Fd.si,
        getPanoramaByPOIId: Fd.Eu
    });
    function Wb(a) {
        xc.call(this);
        "api" == (a || {}).bf ? Na(za) : Na(Aa)
    }
    Wb.NC = ["http://pcsv0.map.bdimg.com/tile/", "http://pcsv1.map.bdimg.com/tile/"];
    Wb.prototype = new xc;
    Wb.prototype.getTilesUrl = function(a, b) {
        var c = Wb.NC[(a.x + a.y) % Wb.NC.length] + "?udt=v&qt=tile&styles=pl&x=" + a.x + "&y=" + a.y + "&z=" + b;
        v.R.aa && 6 >= v.R.aa && (c += "&color_dep=32");
        return c
    };
    Wb.prototype.Pq = ca(n);
    Gd.te = new Q;
    function Gd() {}
    v.extend(Gd, {
        bQ: function(a, b, c) {
            c = v.lang.rd(c);
            b = {
                data: b
            };
            "position_changed" == a && (b.data = Gd.te.zh(new P(b.data.mercatorX, b.data.mercatorY)));
            c.dispatchEvent(new N("on" + a), b)
        }
    });
    var Hd = Gd;
    W(Hd, {
        dispatchFlashEvent: Hd.bQ
    });
    var Id = {
        kK: 50,
        $r: "http://pcsv0.map.bdimg.com",
        Wr: {
            width: 220,
            height: 60
        }
    };
    v.extend(Id, {
        wn: function(a, b, c, d) {
            if (!b || !c || !c.lngLat || !c.panoInstance) d();
            else {
                this.vm === j && (this.vm = new S(p, {
                    bf: "api"
                }));
                var e = this;
                this.vm.Ny(b,
                function(b) {
                    b ? e.vm.si(c.lngLat, Id.kK,
                    function(b) {
                        if (b && b.id) {
                            var f = b.id,
                            k = b.Dj,
                            b = b.Ej,
                            l = S.te.vg(c.lngLat),
                            m = e.FM(l, {
                                x: k,
                                y: b
                            }),
                            k = e.TG(f, m, 0, Id.Wr.width, Id.Wr.height);
                            a.content = e.GM(a.content, k, c.titleTip, c.beforeDomId);
                            a.addEventListener("open",
                            function() {
                                ja.D(v.gc("infoWndPano"), "click",
                                function() {
                                    c.panoInstance.rc(f);
                                    c.panoInstance.show();
                                    c.panoInstance.zd({
                                        heading: m,
                                        pitch: 0
                                    })
                                })
                            })
                        }
                        d()
                    }) : d()
                })
            }
        },
        GM: function(a, b, c, d) {
            var c = c || "",
            e; ! d || !a.split(d)[0] ? (d = a, a = "") : (d = a.split(d)[0], e = d.lastIndexOf("<"), d = a.substring(0, e), a = a.substring(e));
            e = [];
            var f = Id.Wr.width,
            g = Id.Wr.height;
            e.push(d);
            e.push("<div id='infoWndPano' class='panoInfoBox' style='height:" + g + "px;width:" + f + "px; margin-top: -19px;'>");
            e.push("<img class='pano_thumnail_img' width='" + f + "' height='" + g + "' border='0' alt='" + c + "\u5916\u666f' title='" + c + "\u5916\u666f' src='" + b + "' onerror='Pano.PanoEntranceUtil.thumbnailNotFound(this, " + f + ", " + g + ");' />");
            e.push("<div class='panoInfoBoxTitleBg' style='width:" + f + "px;'></div><a href='javascript:void(0)' class='panoInfoBoxTitleContent' >\u8fdb\u5165\u5168\u666f&gt;&gt;</a>");
            e.push("</div>");
            e.push(a);
            return e.join("")
        },
        FM: function(a, b) {
            var c = 90 - 180 * Math.atan2(a.y - b.y, a.x - b.x) / Math.PI;
            0 > c && (c += 360);
            return c
        },
        TG: function(a, b, c, d, e) {
            var f = {
                panoId: a,
                panoHeading: b || 0,
                panoPitch: c || 0,
                width: d,
                height: e
            };
            return (Id.$r + "/?qt=pr3d&fovy=75&quality=80&panoid={panoId}&heading={panoHeading}&pitch={panoPitch}&width={width}&height={height}").replace(/\{(.*?)\}/g,
            function(a, b) {
                return f[b]
            })
        }
    });
    B.Map = Ja;
    B.Hotspot = db;
    B.MapType = Lc;
    B.Point = J;
    B.Pixel = P;
    B.Size = M;
    B.Bounds = ab;
    B.TileLayer = xc;
    B.Projection = ac;
    B.MercatorProjection = Q;
    B.PerspectiveProjection = cb;
    B.Copyright = function(a, b, c) {
        this.id = a;
        this.Qa = b;
        this.content = c
    };
    B.Overlay = cc;
    B.Label = kc;
    B.GroundOverlay = lc;
    B.PointCollection = pc;
    B.Marker = T;
    B.Icon = gc;
    B.IconSequence = ic;
    B.Symbol = hc;
    B.Polyline = tc;
    B.Polygon = sc;
    B.InfoWindow = jc;
    B.Circle = uc;
    B.Control = R;
    B.NavigationControl = eb;
    B.GeolocationControl = Sb;
    B.OverviewMapControl = gb;
    B.CopyrightControl = Tb;
    B.ScaleControl = fb;
    B.MapTypeControl = hb;
    B.PanoramaControl = Vb;
    B.TrafficLayer = Ic;
    B.CustomLayer = ib;
    B.ContextMenu = Xb;
    B.MenuItem = $b;
    B.LocalSearch = Ya;
    B.TransitRoute = kd;
    B.DrivingRoute = nd;
    B.WalkingRoute = od;
    B.Autocomplete = vd;
    B.Geocoder = qd;
    B.LocalCity = sd;
    B.Geolocation = Geolocation;
    B.BusLineSearch = ud;
    B.Boundary = td;
    B.VectorCloudLayer = Gc;
    B.VectorTrafficLayer = Hc;
    B.Panorama = La;
    B.PanoramaLabel = zd;
    B.PanoramaService = S;
    B.PanoramaCoverageLayer = Wb;
    B.PanoramaFlashInterface = Gd;
    function W(a, b) {
        for (var c in b) a[c] = b[c]
    }
    W(window, {
        BMap: B,
        _jsload2: function(a, b) {
            ja.Ov.YR && ja.Ov.set(a, b);
            K.rP(a, b)
        },
        BMAP_API_VERSION: "2.0"
    });
    var Y = Ja.prototype;
    W(Y, {
        getBounds: Y.cf,
        getCenter: Y.wa,
        getMapType: Y.ia,
        getSize: Y.Fb,
        setSize: Y.cd,
        getViewport: Y.Eq,
        getZoom: Y.T,
        centerAndZoom: Y.Id,
        panTo: Y.xh,
        panBy: Y.Of,
        setCenter: Y.lf,
        setCurrentCity: Y.LB,
        setMapType: Y.Qf,
        setViewport: Y.Eg,
        setZoom: Y.Ad,
        highResolutionEnabled: Y.rg,
        zoomTo: Y.Tf,
        zoomIn: Y.jC,
        zoomOut: Y.kC,
        addHotspot: Y.Gt,
        removeHotspot: Y.US,
        clearHotspots: Y.Ok,
        checkResize: Y.tP,
        addControl: Y.Et,
        removeControl: Y.LI,
        getContainer: Y.Ba,
        addContextMenu: Y.Gm,
        removeContextMenu: Y.In,
        addOverlay: Y.va,
        removeOverlay: Y.zb,
        clearOverlays: Y.RF,
        openInfoWindow: Y.Yb,
        closeInfoWindow: Y.Cc,
        pointToOverlayPixel: Y.ne,
        overlayPixelToPoint: Y.BI,
        getInfoWindow: Y.pg,
        getOverlays: Y.vA,
        getPanes: function() {
            return {
                floatPane: this.Gd.Zz,
                markerMouseTarget: this.Gd.eB,
                floatShadow: this.Gd.BG,
                labelPane: this.Gd.$A,
                markerPane: this.Gd.YH,
                markerShadow: this.Gd.ZH,
                mapPane: this.Gd.Tq
            }
        },
        addTileLayer: Y.eg,
        removeTileLayer: Y.Cg,
        pixelToPoint: Y.ib,
        pointToPixel: Y.Nb,
        setFeatureStyle: Y.Rn,
        selectBaseElement: Y.FX,
        setMapStyle: Y.kr,
        enable3DBuilding: Y.Xm,
        disable3DBuilding: Y.YP
    });
    var Jd = Lc.prototype;
    W(Jd, {
        getTileLayer: Jd.qR,
        getMinZoom: Jd.dn,
        getMaxZoom: Jd.cl,
        getProjection: Jd.kn,
        getTextColor: Jd.Cq,
        getTips: Jd.Dq
    });
    W(window, {
        BMAP_NORMAL_MAP: Ka,
        BMAP_PERSPECTIVE_MAP: Ma,
        BMAP_SATELLITE_MAP: Ua,
        BMAP_HYBRID_MAP: Oa
    });
    var Kd = Q.prototype;
    W(Kd, {
        lngLatToPoint: Kd.vg,
        pointToLngLat: Kd.zh
    });
    var Ld = cb.prototype;
    W(Ld, {
        lngLatToPoint: Ld.vg,
        pointToLngLat: Ld.zh
    });
    var Md = ab.prototype;
    W(Md, {
        equals: Md.nb,
        containsPoint: Md.Xt,
        containsBounds: Md.CP,
        intersects: Md.OA,
        extend: Md.extend,
        getCenter: Md.wa,
        isEmpty: Md.zi,
        getSouthWest: Md.le,
        getNorthEast: Md.ef,
        toSpan: Md.aC
    });
    var Nd = cc.prototype;
    W(Nd, {
        isVisible: Nd.ug,
        show: Nd.show,
        hide: Nd.J
    });
    cc.getZIndex = cc.jl;
    var Od = bb.prototype;
    W(Od, {
        openInfoWindow: Od.Yb,
        closeInfoWindow: Od.Cc,
        enableMassClear: Od.pi,
        disableMassClear: Od.$P,
        show: Od.show,
        hide: Od.J,
        getMap: Od.zu,
        addContextMenu: Od.Gm,
        removeContextMenu: Od.In
    });
    var Pd = T.prototype;
    W(Pd, {
        setIcon: Pd.Hb,
        getIcon: Pd.bn,
        setPosition: Pd.ga,
        getPosition: Pd.U,
        setOffset: Pd.Sd,
        getOffset: Pd.ff,
        getLabel: Pd.qA,
        setLabel: Pd.Ll,
        setTitle: Pd.fc,
        setTop: Pd.Ch,
        enableDragging: Pd.kc,
        disableDragging: Pd.qz,
        setZIndex: Pd.sr,
        getMap: Pd.zu,
        setAnimation: Pd.Kl,
        setShadow: Pd.Fv,
        hide: Pd.J,
        setRotation: Pd.Vn,
        getRotation: Pd.XG
    });
    W(window, {
        BMAP_ANIMATION_DROP: 1,
        BMAP_ANIMATION_BOUNCE: 2
    });
    var Qd = kc.prototype;
    W(Qd, {
        setStyle: Qd.dd,
        setStyles: Qd.Bh,
        setContent: Qd.Gc,
        setPosition: Qd.ga,
        getPosition: Qd.U,
        setOffset: Qd.Sd,
        getOffset: Qd.ff,
        setTitle: Qd.fc,
        setZIndex: Qd.sr,
        getMap: Qd.zu,
        getContent: Qd.qj
    });
    var Rd = gc.prototype;
    W(Rd, {
        setImageUrl: Rd.xT,
        setSize: Rd.cd,
        setAnchor: Rd.ac,
        setImageOffset: Rd.jr,
        setImageSize: Rd.vT,
        setInfoWindowAnchor: Rd.zT,
        setPrintImageUrl: Rd.HT
    });
    var Sd = jc.prototype;
    W(Sd, {
        redraw: Sd.yd,
        setTitle: Sd.fc,
        setContent: Sd.Gc,
        getContent: Sd.qj,
        getPosition: Sd.U,
        enableMaximize: Sd.hg,
        disableMaximize: Sd.hu,
        isOpen: Sd.Ja,
        setMaxContent: Sd.lr,
        maximize: Sd.bv,
        enableAutoPan: Sd.jq
    });
    var Td = ec.prototype;
    W(Td, {
        getPath: Td.Md,
        setPath: Td.Td,
        setPositionAt: Td.Nl,
        getStrokeColor: Td.kR,
        setStrokeWeight: Td.qr,
        getStrokeWeight: Td.$G,
        setStrokeOpacity: Td.or,
        getStrokeOpacity: Td.lR,
        setFillOpacity: Td.Cv,
        getFillOpacity: Td.MQ,
        setStrokeStyle: Td.pr,
        getStrokeStyle: Td.ZG,
        getFillColor: Td.LQ,
        getBounds: Td.cf,
        enableEditing: Td.af,
        disableEditing: Td.ZP
    });
    var Ud = uc.prototype;
    W(Ud, {
        setCenter: Ud.lf,
        getCenter: Ud.wa,
        getRadius: Ud.VG,
        setRadius: Ud.Ke
    });
    var Vd = sc.prototype;
    W(Vd, {
        getPath: Vd.Md,
        setPath: Vd.Td,
        setPositionAt: Vd.Nl
    });
    var Wd = db.prototype;
    W(Wd, {
        getPosition: Wd.U,
        setPosition: Wd.ga,
        getText: Wd.AA,
        setText: Wd.rr
    });
    J.prototype.equals = J.prototype.nb;
    P.prototype.equals = P.prototype.nb;
    M.prototype.equals = M.prototype.nb;
    W(window, {
        BMAP_ANCHOR_TOP_LEFT: Pb,
        BMAP_ANCHOR_TOP_RIGHT: Qb,
        BMAP_ANCHOR_BOTTOM_LEFT: Rb,
        BMAP_ANCHOR_BOTTOM_RIGHT: 3
    });
    var Xd = R.prototype;
    W(Xd, {
        setAnchor: Xd.ac,
        getAnchor: Xd.dA,
        setOffset: Xd.Sd,
        getOffset: Xd.ff,
        show: Xd.show,
        hide: Xd.J,
        isVisible: Xd.ug,
        toString: Xd.toString
    });
    var Yd = eb.prototype;
    W(Yd, {
        getType: Yd.nn,
        setType: Yd.Pl
    });
    W(window, {
        BMAP_NAVIGATION_CONTROL_LARGE: 0,
        BMAP_NAVIGATION_CONTROL_SMALL: 1,
        BMAP_NAVIGATION_CONTROL_PAN: 2,
        BMAP_NAVIGATION_CONTROL_ZOOM: 3
    });
    var Zd = gb.prototype;
    W(Zd, {
        changeView: Zd.Jd,
        setSize: Zd.cd,
        getSize: Zd.Fb
    });
    var $d = fb.prototype;
    W($d, {
        getUnit: $d.uR,
        setUnit: $d.RB
    });
    W(window, {
        BMAP_UNIT_METRIC: "metric",
        BMAP_UNIT_IMPERIAL: "us"
    });
    var ae = Tb.prototype;
    W(ae, {
        addCopyright: ae.Ft,
        removeCopyright: ae.xB,
        getCopyright: ae.al,
        getCopyrightCollection: ae.kA
    });
    W(window, {
        BMAP_MAPTYPE_CONTROL_HORIZONTAL: Ub,
        BMAP_MAPTYPE_CONTROL_DROPDOWN: 1,
        BMAP_MAPTYPE_CONTROL_MAP: 2
    });
    var be = xc.prototype;
    W(be, {
        getMapType: be.ia,
        getCopyright: be.al,
        isTransparentPng: be.Pq
    });
    var ce = Xb.prototype;
    W(ce, {
        addItem: ce.Ht,
        addSeparator: ce.By,
        removeSeparator: ce.zB
    });
    var de = $b.prototype;
    W(de, {
        setText: de.rr
    });
    var ee = V.prototype;
    W(ee, {
        getStatus: ee.fl,
        setSearchCompleteCallback: ee.PB,
        getPageCapacity: ee.De,
        setPageCapacity: ee.Un,
        setLocation: ee.Ml,
        disableFirstResultSelection: ee.rz,
        enableFirstResultSelection: ee.Nz,
        gotoPage: ee.kl,
        searchNearby: ee.Pn,
        searchInBounds: ee.Jl,
        search: ee.search
    });
    W(window, {
        BMAP_STATUS_SUCCESS: 0,
        BMAP_STATUS_CITY_LIST: 1,
        BMAP_STATUS_UNKNOWN_LOCATION: 2,
        BMAP_STATUS_UNKNOWN_ROUTE: 3,
        BMAP_STATUS_INVALID_KEY: 4,
        BMAP_STATUS_INVALID_REQUEST: 5,
        BMAP_STATUS_PERMISSION_DENIED: 6,
        BMAP_STATUS_SERVICE_UNAVAILABLE: 7,
        BMAP_STATUS_TIMEOUT: 8
    });
    W(window, {
        BMAP_POI_TYPE_NORMAL: 0,
        BMAP_POI_TYPE_BUSSTOP: 1,
        BMAP_POI_TYPE_BUSLINE: 2,
        BMAP_POI_TYPE_SUBSTOP: 3,
        BMAP_POI_TYPE_SUBLINE: 4
    });
    W(window, {
        BMAP_TRANSIT_POLICY_LEAST_TIME: 0,
        BMAP_TRANSIT_POLICY_LEAST_TRANSFER: 2,
        BMAP_TRANSIT_POLICY_LEAST_WALKING: 3,
        BMAP_TRANSIT_POLICY_AVOID_SUBWAYS: 4,
        BMAP_LINE_TYPE_BUS: 0,
        BMAP_LINE_TYPE_SUBWAY: 1,
        BMAP_LINE_TYPE_FERRY: 2
    });
    var fe = jd.prototype;
    W(fe, {
        clearResults: fe.ie
    });
    ld = kd.prototype;
    W(ld, {
        setPolicy: ld.nr,
        toString: ld.toString,
        setPageCapacity: ld.Un
    });
    W(window, {
        BMAP_DRIVING_POLICY_LEAST_TIME: 0,
        BMAP_DRIVING_POLICY_LEAST_DISTANCE: 1,
        BMAP_DRIVING_POLICY_AVOID_HIGHWAYS: 2
    });
    W(window, {
        BMAP_HIGHLIGHT_STEP: 1,
        BMAP_HIGHLIGHT_ROUTE: 2
    });
    W(window, {
        BMAP_ROUTE_TYPE_DRIVING: Wc,
        BMAP_ROUTE_TYPE_WALKING: Vc
    });
    W(window, {
        BMAP_ROUTE_STATUS_NORMAL: Xc,
        BMAP_ROUTE_STATUS_EMPTY: 1,
        BMAP_ROUTE_STATUS_ADDRESS: 2
    });
    var ge = nd.prototype;
    W(ge, {
        setPolicy: ge.nr
    });
    var he = vd.prototype;
    W(he, {
        show: he.show,
        hide: he.J,
        setTypes: he.QB,
        setLocation: he.Ml,
        search: he.search,
        setInputValue: he.Dv
    });
    W(ib.prototype, {});
    var ie = td.prototype;
    W(ie, {
        get: ie.get
    });
    W(Wb.prototype, {});
    W(Za.prototype, {});
    W(window, {
        BMAP_POINT_DENSITY_HIGH: 200,
        BMAP_POINT_DENSITY_MEDIUM: Kc,
        BMAP_POINT_DENSITY_LOW: 50
    });
    W(window, {
        BMAP_POINT_SHAPE_STAR: 1,
        BMAP_POINT_SHAPE_WATERDROP: 2,
        BMAP_POINT_SHAPE_CIRCLE: mc,
        BMAP_POINT_SHAPE_SQUARE: 4,
        BMAP_POINT_SHAPE_RHOMBUS: 5
    });
    W(window, {
        BMAP_POINT_SIZE_TINY: 1,
        BMAP_POINT_SIZE_SMALLER: 2,
        BMAP_POINT_SIZE_SMALL: 3,
        BMAP_POINT_SIZE_NORMAL: nc,
        BMAP_POINT_SIZE_BIG: 5,
        BMAP_POINT_SIZE_BIGGER: 6,
        BMAP_POINT_SIZE_HUGE: 7
    });
    W(window, {
        BMap_Symbol_SHAPE_CAMERA: 11,
        BMap_Symbol_SHAPE_WARNING: 12,
        BMap_Symbol_SHAPE_SMILE: 13,
        BMap_Symbol_SHAPE_CLOCK: 14,
        BMap_Symbol_SHAPE_POINT: 9,
        BMap_Symbol_SHAPE_PLANE: 10,
        BMap_Symbol_SHAPE_CIRCLE: 1,
        BMap_Symbol_SHAPE_RECTANGLE: 2,
        BMap_Symbol_SHAPE_RHOMBUS: 3,
        BMap_Symbol_SHAPE_STAR: 4,
        BMap_Symbol_SHAPE_BACKWARD_CLOSED_ARROW: 5,
        BMap_Symbol_SHAPE_FORWARD_CLOSED_ARROW: 6,
        BMap_Symbol_SHAPE_BACKWARD_OPEN_ARROW: 7,
        BMap_Symbol_SHAPE_FORWARD_OPEN_ARROW: 8
    });
    W(window, {
        BMAP_CONTEXT_MENU_ICON_ZOOMIN: Yb,
        BMAP_CONTEXT_MENU_ICON_ZOOMOUT: Zb
    });
    B.VO();
})()