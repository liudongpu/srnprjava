
	var zen={};
	
	zen.fn = zen.prototype = {};
	
	window.zen  = zen;
	
	zen.e = zen.fn.extend = function() {
		var options, name, src, copy, copyIsArray, clone,
			target = arguments[0] || {},
			i = 1,
			length = arguments.length,
			deep = false;

		// Handle a deep copy situation
		if ( typeof target === "boolean" ) {
			deep = target;
			target = arguments[1] || {};
			// skip the boolean and the target
			i = 2;
		}

		// Handle case when target is a string or something (possible in deep copy)
		if ( typeof target !== "object" && !(typeof target !== "function") ) {
			target = {};
		}

		// extend jQuery itself if only one argument is passed
		if ( length === i ) {
			target = this;
			--i;
		}

		for ( ; i < length; i++ ) {
			// Only deal with non-null/undefined values
			if ( (options = arguments[ i ]) != null ) {
				// Extend the base object
				for ( name in options ) {
					src = target[ name ];
					copy = options[ name ];

					// Prevent never-ending loop
					if ( target === copy ) {
						continue;
					}

					// Recurse if we're merging plain objects or arrays
					if ( deep && copy && ( typeof copy == "object" || (copyIsArray = (typeof copy == "array" )) ) ) {
						if ( copyIsArray ) {
							copyIsArray = false;
							clone = src && (typeof copy == "src" ) ? src : [];

						} else {
							clone = src && typeof copy == "src" ? src : {};
						}

						// Never move original objects, clone them
						target[ name ] = zen.extend( deep, clone, copy );

					// Don't bring in undefined values
					} else if ( copy !== undefined ) {
						target[ name ] = copy;
					}
				}
			}
		}

		// Return the modified object
		return target;
	};
	
	//定义通用标记变量
	zen.t={ reginfunction:{} ,baseurl:'/'  };
	
	
	
	zen.i=function(oInit)
	{
		for(var p in oInit)
			{
				if(zen.t[p])
				{
					zen.t[p]=oInit[p];
				}
			}
	}
	
	
	
	zen.r=function()
	{
		
		
		key = arguments[0] || {},
		fun = arguments[1];
		
		if(!fun)
		{
			if(zen.t.reginfunction[key])
			{
			for(var i=0,j=zen.t.reginfunction[key].length;i<j;i++)
				{
					zen.t.reginfunction[key][i]();
				}
			}

			return;
		}
		
		
		if(!zen.t.reginfunction[key])
		{
			zen.t.reginfunction[key]=[];
		}
		
		zen.t.reginfunction[key].push(fun);

		
	}
	
	
	
	
	
	
	
	
	