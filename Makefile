all: transpile

transpile:
	./fab drawio.ohm drawionames.fab support.js <simpletest.drawio

identity:
	./fab xml.ohm xml-identity.fab support.js <simpletest.drawio

simpletest:
	./fab xml.ohm xml-identity.fab support.js <test.xml
