﻿module uim.html.elements.span;

import uim.html;

class DH5Span : DH5Obj {
	mixin(H5This!"Span");
}
mixin(H5Short!"Span");

unittest {	
	assert(Assert(H5Span, "<span></span>"));
}
