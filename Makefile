

build: draft-gondwana-effective-terminology.txt draft-gondwana-effective-terminology.html draft-gondwana-effective-terminology.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
