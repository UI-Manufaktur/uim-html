﻿module uim.html.elements.inputs.radio;

import uim.html;

class DH5Radio : DH5Input {
	mixin(H5This!("Input", null, `["type":"radio"]`, true)); 
}
mixin(H5Short!"Radio"); 

unittest {
	
}