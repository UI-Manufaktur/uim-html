﻿module uim.html.elements.p;

import uim.html;

class DH5P : DH5Obj {
	mixin(H5This!("P"));
}
mixin(FuncH5!"P");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(H5P == "<p></p>");
}
