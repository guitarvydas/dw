all: denoise

denoise:
	./rewrite denoise.ohm --grammarname="DENOISE" drawiodenoise.rwr support.js <simpletest.drawio

dev:
	./rewrite denoise.ohm --grammarname="DENOISE" drawiodenoise.rwr support.js <dev.drawio

rwr:
	./rewrite drawio.ohm --grammarname="DRAWIO" drawionames.rwr support.js <simpletest.drawio

identity:
	./rewrite xml.ohm xml-identity.rwr support.js <simpletest.drawio

simple:
	./rewrite xml.ohm xml-identity.rwr support.js <test.xml

