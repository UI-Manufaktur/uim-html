﻿module uim.html.elements.link;

import uim.html;

class DH5LINK : DH5Obj {
	mixin(H5This!("LINK", null, null, true));
}
mixin(FuncH5!("LINK"));

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(H5LINK == "<link>");
}