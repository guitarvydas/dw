all: rwr

rwr:
	./rewrite drawio.ohm drawionames.rwr support.js <simpletest.drawio

identity:
	./rewrite xml.ohm xml-identity.rwr support.js <simpletest.drawio

simple:
	./rewrite xml.ohm xml-identity.rwr support.js <test.xml

dev:
	./rewrite temp.ohm drawionames.rwr support.js <simpletest.drawio

