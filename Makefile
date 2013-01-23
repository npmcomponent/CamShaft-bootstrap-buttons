
build: components bootstrap-buttons.css bootstrap-buttons.js
	@component build --dev

bootstrap-buttons.css: bootstrap-buttons.less
	node_modules/.bin/recess bootstrap-buttons.less --compile > bootstrap-buttons.css

bootstrap-buttons.js:
	cp node_modules/bootstrap/js/bootstrap-button.js bootstrap-buttons.js

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-buttons.css

.PHONY: clean
