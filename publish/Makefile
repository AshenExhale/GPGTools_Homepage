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

check:
	@echo "Checking..."
	# not html5 compatible, yet
	@/Applications/Validator-SAC.app/Contents/MacOS/Validator-SAC index.html
