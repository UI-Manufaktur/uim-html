﻿module uim.html.elements.main_;

import uim.html;

class DH5Main : DH5Obj {
	mixin(H5This!("main"));
}
mixin(H5Short!"Main");

unittest {
	
	
	assert(H5Main == "<main></main>");
}
