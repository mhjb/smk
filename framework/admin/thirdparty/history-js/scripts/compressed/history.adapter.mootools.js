(function(a,b){"use strict";var c=a.History=a.History||{},d=a.MooTools,e=a.Element;if(typeof c.Adapter!="undefined")throw new Error("History.js Adapter has already been loaded...");Object.append(e.NativeEvents,{popstate:2,hashchange:2}),c.Adapter={bind:function(a,b,c){var d=typeof a=="string"?document.id(a):a;d.addEvent(b,c)},trigger:function(a,b,c){var d=typeof a=="string"?document.id(a):a;d.fireEvent(b,c)},extractEventData:function(a,c){var d=c&&c.event&&c.event[a]||c&&c[a]||b;return d},onDomLoad:function(b){a.addEvent("domready",b)}},typeof c.init!="undefined"&&c.init()})(window)
