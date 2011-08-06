#!/bin/bash

# parameter check --------------------------
if [ ! -d "templates" ]; then
    echo "Syntax: ./build/compile.sh";
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


# php to html ------------------------------
echo " * Running PHP...";
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
			
			echo "   * $dir/$destFile";
			php "$src" > "$destFile"
			
			if ! echo " ${phpFiles[*]} " | grep -Fqe " $src " ;then
				phpFiles[$fileCount]="$src"
				((fileCount++))
				srcEscaped=$(echo "$src" | sed 's/\([]"\\\.+*[]\)/\\\1/g')
				destFileEscaped=$(echo "$destFile" | sed 's/\\/\\\\/g')
				sedText="${sedText}s/\([\"'/]\)${srcEscaped}/\1${destFileEscaped}/g;"
			fi
		fi
	done
	popd >/dev/null
done

# ------------------------------------------


# .php links to .html links -----------------
echo -en "\n * Converting links..."
for dir in ${dirs[*]} ;do
	pushd $dir >/dev/null
	sed -i "" -e "$sedText" *.html
	popd >/dev/null
done
echo " OK"
# ------------------------------------------



