all: show

show: compile
	@echo "Opening..."
	@./build/run.sh

compile: clean
	@echo "Compiling..."
	@./build/compile.sh

clean:
	@echo "Cleaning..."
	@rm -fr template_c

web:
	@open http://gpgtools.org

validate:
	@open "http://validator.w3.org/unicorn/check?ucn_uri=validator.w3.org%2Funicorn%2Fcheck%3Fucn_uri%3Dwww.gpgtools.org%26ucn_task%3Dconformance%23&tests=markup-validator&tests=css-validator&tests=mobileok&tests=feed&ucn_task=custom&warning=2&profile=css3&usermedium=screen#"

check:
	@echo "Checking..."
	# not html5 compatible, yet
	@/Applications/Validator-SAC.app/Contents/MacOS/Validator-SAC index.html
