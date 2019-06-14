﻿module uim.html.elements.mark;

import uim.html;

/// HTML5 "mark" class
class DH5MARK : DH5Obj {
	mixin(H5This!"MARK");
}
mixin(FuncH5!"MARK");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(H5MARK == "<mark></mark>");
}