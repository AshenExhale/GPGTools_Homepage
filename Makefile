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
	@open "http://validator.w3.org/unicorn/check?ucn_uri=www.gpgtools.org&tests=markup-validator&tests=css-validator&tests=mobileok&tests=feed&ucn_task=custom&warning=2&profile=css21&usermedium=screen#"

check:
	@echo "Checking..."
	# not html5 compatible, yet
	@/Applications/Validator-SAC.app/Contents/MacOS/Validator-SAC index.html
