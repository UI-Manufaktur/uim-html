﻿module uim.html.elements.math;

import uim.html;

class DH5MATH : DH5Obj {
	mixin(H5This!"MATH");
}
mixin(FuncH5!"MATH");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(H5MATH == "<math></math>");
}