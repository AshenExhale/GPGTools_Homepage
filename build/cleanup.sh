#!/bin/bash

# parameter check --------------------------
if [ ! -d "templates" ]; then
    echo "Syntax: ./build/cleanup.sh";
    exit;
fi
# ------------------------------------------




###############################
# Parameters in PHP files:
#
# Set file extension:
#	/*fileExtension=xml*/
#
# Ignore:
#	/*compileIgnore*/
#
################################


dirs=(. gpgmail gpgpreferences gpgservices installer keychain macgpg1 macgpg2 mobile)
fileCount=0
unset phpFiles sedText

echo -n " * Cleaning..."
for dir in ${dirs[*]} ;do
	pushd $dir >/dev/null
	
	for src in *.php ;do
		dest=`basename -s .php "$src"`
		
		if ! grep -m 1 '^.*/\*[[:space:]]*compileIgnore[[:space:]]*\*/' "$src" >/dev/null ;then
			if fileExtension="$(grep -m 1 '^[[:space:]]*/\*[[:space:]]*fileExtension=.*\*/' "$src")" ;then
				fileExtension="$(echo "$fileExtension" | sed -nE 's#.*fileExtension=([^\*]*)\*/#\1#p')"
			else
				fileExtension="html"
			fi
			destFile="${dest}.${fileExtension}"
			
			if [ -f "$destFile" ] ;then
				rm "$destFile"
			fi
			
		fi
	done
	popd >/dev/null
done

rm -rf "./templates_c/"

echo " OK"


