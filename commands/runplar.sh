
if [ -z "$play_arg" ]; then
	play_arg="export USING=run;";
	else
	play_arg="export USING=${play_arg};";
fi;
runcommand=$play_arg"cd "$destPath";sudo  "$nohupable"  /usr/sbin/Plar/plarx rclean -f  "$destPath"  -n "$kewyword