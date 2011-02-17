#!/bin/bash

# parameter check --------------------------
if [ ! -f "index.php" ]; then
    echo "Syntax: ./build/compile.sh";
    exit;
fi
# ------------------------------------------



# php to html ------------------------------
echo " * Running PHP...";
for src in `ls *.php`; do
    dest=`basename -s .php "$src"`
    echo "   * $dest";
	
	if fileExtension="$(grep -m 1 '^[[:space:]]*/\*[[:space:]]*fileExtension=.*\*/' "$src")" ;then
		fileExtension="$(echo "$fileExtension" | sed -nE 's#.*fileExtension=([^\*]*)\*/#\1#p')"
	else
		fileExtension="html"
	fi
	
	php "$src" > "${dest}.${fileExtension}"
done
# ------------------------------------------



# .php links to .html links -----------------
echo -n " * Changing '.php' to '.html'...";
for html in `ls *.html`; do
    for php in `ls *.php`; do
        filename=`basename -s .php "$php"`
        sed -i "" "s/$php/$filename.html/g" "$html"
    done
done
echo "done.";
# ------------------------------------------
