## Grammar
```
drawio {
  ...
  xml = prolog? root
  ...
}
```
## Semantic Function (JavaScript)

(This is actually a JavaScript "namespace" that contains functions)

```
---

{
...
    xml: function (prolog,root) {
        ...
    },
...
}

---
```

- pattern matching always results in a tree
- the trees are fed into the "semantics" functions as JS parameters
- one match => one tree
- trees are defined to be "recursive" - trees can contain trees or "terminals"
- terminals are essentially little data structures that cache the characters that were actually matched
- if a pattern is composed of several matches, its resulting tree contains sub-trees, one tree for each actual match

![[simple parse tree.drawio.svg]]

- every semantic operation corresponding to each grammar rule must return a data structure (lots of choices here - the actual choices depend on the programmer's intentions)
- "Walk" the trees to expand them. You must call the semantic function on each of the parameters (in the above, the semantic function is called `_fmt()`).

- In my use-case, I simplify by insisting that semantic functions will *always* returns strings or arrays of strings.  Period.  Snip all other possibilities.  The code becomes trivial to write, using JS.  Use `...${...}...` syntax to generate strings.  Use `.join()` to flatten arrays into big, long (single) strings.  Repeat religiously - this is called "normalization".  Normalization allows for easier automation, i.e. you can write a program that scripts the computer to do interesting things with normalized code, e.g. writing a compiler, a transpiler, a database, etc.

- In my use-case, I give `_` names to parameters, then expand their trees immediately. Due to my simplification, the expansion *always* returns Strings or arrays of String. See the `xml` function. In this simple example, it simply glues the two expansion strings together and returns the result.

---

{
...

	xml: function (_prolog,_root) {
		var prolog = _prolog._fmt ().join ('');
		var root = _root._fmt ();
		
		return `${prolog}${root}`;
	},
...
}

---

At the very, very bottom of the parse tree, we find rules that simply return a string of the characters that were matched:

```
...
    _terminal: function () { return this.sourceString; },
...
```

## Summary

This snippet of grammar
```
drawio {
  ...
  xml = prolog? root
  ...
}
```

performs a pattern match, 

then punts the result to a set of JavaScript functions of the form
```
{
...

	xml: function (_prolog,_root) {
		var prolog = _prolog._fmt ().join ('');
		var root = _root._fmt ();
		
		return `${prolog}${root}`;
	},
...
    prolog: function (_ws1,_lkeq,_any,_kqgt,_ws2) {
        ...
    },
...
    root: function (_nestedElement) {
        ...
    },
...
    _terminal: function () { return this.sourceString; },
...
}
```
