all:
	./fab drawio.ohm drawio-identity.fab support.js <shapes.drawio

simpletest:
	./fab drawio.ohm drawio-identity.fab support.js <test.xml
