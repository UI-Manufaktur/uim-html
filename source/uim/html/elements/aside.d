﻿module uim.html.elements.aside;

import uim.html;

class DH5Aside : DH5Obj {
	mixin(H5This!"aside");
}

mixin(H5Short!"Aside");

unittest {
	assert(H5Aside == "<aside></aside>");
}
