function fregec
	set mainFile $argv[1]
	if test ! -f $mainFile
		echo "No main file provided!"
		return 1
	end
	if test ! -d build 
		mkdir build
	end
	java -Xss1m -jar $FREGE_HOME/fregec.jar -d build $mainFile
end
