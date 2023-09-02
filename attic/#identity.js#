{
    drawIO: function (_xml) {
	var xml = _xml._fmt ();

	return `${xml}`;
    },
    xml: function (_prolog,_root) {
	var prolog = _prolog._fmt ().join ('');
	var root = _root._fmt ();

	return `${prolog}${root}`;
    },
    prolog: function (_ws1,_lkeq,_any,_kqgt,_ws2) {
	var ws1 = _ws1._fmt ().join ('');
	var lkeq = _lkeq._fmt ();
	var any = _any._fmt ().join ('');
	var kqgt = _kqgt._fmt ();
	var ws2 = _ws2._fmt ().join ('');
	
	return `${ws1}${lkeq}${any}${kqgt}${ws2}`;
    },
    root: function (_nestedElement) {
	var nestedElement = _nestedElement._fmt ();
	
	return `${nestedElement}`;
    },
    nestedElement: function (_ws1,_klt,_nameAndAttributesAndSpaces,_kgt,_element,_kgtsl,_name,_kgt2,_ws2) {
	var ws1 = _ws1._fmt ().join ('');
	var klt = _klt._fmt ();
	var nameAndAttributesAndSpaces = _nameAndAttributesAndSpaces._fmt ();
	var kgt = _kgt._fmt ();
	var element = _element._fmt ().join ('');
	var kgtsl = _kgtsl._fmt ();
	var name = _name._fmt ();
	var kgt2 = _kgt2._fmt ();
	var ws2 = _ws2._fmt ().join ('');

	return `${ws1}${klt}${nameAndAttributesAndSpaces}${kgt}${element}${kgtsl}${name}${kgt2}${ws2}`;
    },
    element_nestedElement: function (_ws,_e) {
	var ws = _ws._fmt ().join ('');
	var e = _e._fmt ();

	return `${ws}${e}`;
    },
    element_bottomElement: function (_ws,_e) {
	var ws = _ws._fmt ().join ('');
	var e = _e._fmt ();

	return `${ws}${e}`;
    },
    element_other: function (_stuff) {
	var stuff = _stuff._fmt ().join ('');

	return `${stuff}`;
    },
    bottomElement: function (_klt,_nameAndAttributesAndSpaces,_kslgt,_ws) {
	var klt = _klt._fmt ();
	var nameAndAttributesAndSpaces = _nameAndAttributesAndSpaces._fmt ();
	var kslgt = _kslgt._fmt ();
	var ws = _ws._fmt ().join ('');

	return `${klt}${nameAndAttributesAndSpaces}${kslgt}${ws}`;
    },
    attribute: function (_name,_keq,_str) {
	var name = _name._fmt ();
	var keq = _keq._fmt ();
	var str = _str._fmt ();

	return `${name}${keq}${str}`;
    },
    name: function (_nameCharacter) {
	var nameCharacter = _nameCharacter._fmt ().join ('');

	return `${nameCharacter}`;
    },
    nameCharacter: function (_c) {
	var c = _c._fmt ();

	return `${c}`;
    },
    ws: function (_c) {
	var c = _c._fmt ();

	return `${c}`;
    },
    nameAndAttributesAndSpaces: function (_name,_wsattribute,_ws) {
	var name = _name._fmt ();
	var wsattribute = _wsattribute._fmt ().join ('');
	var ws = _ws._fmt ().join ('');

	return `${name}${wsattribute}${ws}`;
    },
    stuff: function (_any) {
	var any = _any._fmt ();

	return `${any}`;
    },
    string: function (_dq1,_any,_dq2) {
	var dq1 = _dq1._fmt ();
	var any = _any._fmt ().join ('');
	var dq2 = _dq2._fmt ();

	return `${dq1}${any}${dq2}`;
    },
    dq: function (_kdq) {
	var kdq = _kdq._fmt ();

	return `"`;
    },
    wsattribute: function (_ws,_attribute) {
	var ws = _ws._fmt ().join ('');
	var attribute = _attribute._fmt ();

	return `${ws}${attribute}`;
    },

    _terminal: function () { return this.sourceString; },
    _iter: function (...children) { return children.map(c => c._fmt ()); },
    spaces: function (x) { return this.sourceString; },
    space: function (x) { return this.sourceString; }
}
