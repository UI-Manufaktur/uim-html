﻿module uim.html.elements.inputs.tel;

import uim.html;

class DH5InputTEL: DH5Input {
	mixin(H5This!("Input", null, `["type":"tel"]`, true)); 
}
mixin(H5Short!"InputTEL"); 

unittest {
	
}