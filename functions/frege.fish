function frege
	set mainClass $argv[1]
	if test -z $mainClass
		echo "No main class provided!"
		return 1
	end
	if test ! -d build 
		echo "No build directory found!"
		return 1
	end
	java -Xss1m -cp build:$FREGE_HOME/fregec.jar $mainClass
end
