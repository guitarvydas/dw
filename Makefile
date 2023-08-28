all: transpile

transpile:
	./fab drawio.ohm drawio.fab support.js <shapes.drawio

identity:
	./fab drawio.ohm drawio-identity.fab support.js <shapes.drawio

simpletest:
	./fab drawio.ohm drawio-identity.fab support.js <test.xml
