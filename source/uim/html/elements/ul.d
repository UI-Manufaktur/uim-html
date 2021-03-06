﻿module uim.html.elements.ul;

import uim.html;

class DH5Ul : DH5Obj {
	mixin(H5This!"ul");

	mixin(MyContent!("li", "H5Li"));
	unittest {
		assert(Assert(H5Ul.li, "<ul><li></li></ul>"));
		assert(Assert(H5Ul(`<li></li>`), "<ul><li></li></ul>"));
		assert(Assert(H5Ul(H5Li), "<ul><li></li></ul>"));
		assert(Assert(H5Ul(H5.li), "<ul><li></li></ul>"));
	}

	mixin(MyContent!("item", "H5Li"));
	unittest {
		assert(Assert(H5Ul.item, "<ul><li></li></ul>"));
		assert(Assert(H5Ul.item.item, "<ul><li></li><li></li></ul>"));
		assert(Assert(H5Ul.item(["test"]), `<ul><li class="test"></li></ul>`));
	}

	mixin(MyContent!("link", "this.item", "H5Li"));
	unittest {
	}

	O link(this O)(string id, string[] linkClasses, string src, string title) {
		this.item(id, linkClasses, ["src":src], title); return cast(O)this;
	}
	unittest {
	}

}
mixin(H5Short!"Ul");

unittest {
	assert(Assert(H5Ul, "<ul></ul>"));
}
