﻿module uim.html.elements.abbr;

import uim.html;

/++
 + DH5ABBR, H5ABBR are wrappers for the html element "abbr". This element represents an abbreviation or acronym. 
+/
class DH5Abbr : DH5Obj {
	mixin(H5This!"abbr");
}
mixin(H5Short!"Abbr");

unittest {
	mixin(H5Test!("H5Abbr", "abbr"));
}
