﻿module uim.html.elements.tfoot;

import uim.html;

class DH5Tfoot : DH5Obj {
	mixin(H5This!"tfoot");

	mixin(MyContent!("tr", "H5Tr"));
	unittest {
		assert(Assert(H5Tfoot.tr,"<tfoot><tr></tr></tfoot>"));
	}

	mixin(MyContent!("row", "H5Tr"));
	unittest {
		assert(Assert(H5Tfoot.row,"<tfoot><tr></tr></tfoot>"));
	}
}
mixin(H5Short!"Tfoot");

unittest {
	assert(Assert(H5Tfoot, "<tfoot></tfoot>"));
}
