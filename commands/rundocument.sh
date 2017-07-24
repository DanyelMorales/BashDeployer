repodirectory=$destPath"/git/"$kewyword;
gitbanner="========ENTER GIT PASSWORD========\n";
runcommand="cd "$repodirectory"; echo -e "$gitbanner"; git pull; cd "$destPath"; gitbook build  "$repodirectory"  "$sourceFile"  --format website;"