﻿module uim.html.core.element;

import uim.html;

template Classes() {
	const char[] Classes = `
	 string[] classes() { 
		if ("class" in attributes) return attributes["class"].split(" ").unique; 
		return null;
	}
	 @property O classes(this O)(string newClass) { return this.classes(newClass.split(" ").unique);  }
	 @property O classes(this O)(string[] someClasses) {
		if (classes) _attributes["class"] = (classes ~ someClasses).unique.join(" "); 
		else _attributes["class"] = someClasses.unique.join(" "); 
		return cast(O)this; 
	}
	
	 bool hasClasses(string[] someClasses) { foreach(c; someClasses) if (!hasClass(c)) return false; return true; }
	 bool hasClass(string className) { return classes.has(className); }
	
	 O addClasses(this O)(string[] someClasses) { this.classes(someClasses); return cast(O)this; }
	 O addClass(this O)(string newClass) { this.classes(newClass); return cast(O)this; }
	
	 O removeClass(this O)(string[] someClasses) { foreach(c; someClasses) removeClass(c); return cast(O)this; }
	 O removeClass(this O)(string className) { if (hasClass(className)) classes = std.algorithm.mutation.remove(classes, className); return cast(O)this; }
	
	 O toggleClass(this O)(string[] someClasses) { foreach(c; someClasses) toggleClass(c); return cast(O)this; }
	 O toggleClass(this O)(string className) { if (hasClass(className)) removeClass(className); else addClass(className); return cast(O)this; }
	`;
}

enum ShowMode { standard, onlyHTML, onlyJS, onlyCSS }

unittest {
	
}