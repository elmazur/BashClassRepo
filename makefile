README.md: guessinggame.sh
	echo "# Final Project: The Unix Workbench" > README.md
	echo "###     by Edith" >> README.md
	echo "        " >> README.md
	echo "## This file was created on $$(date)" >> README.md
	echo "        " >> README.md
	echo "Final project *guessinggame.sh* has $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines" >> README.md
	#lineCount=$$(wc -l guessinggame.sh | egrep -o "[0-9]+")
	#echo $$(lineCount)

    # Remove the leading white spaces.
    #myVar=`echo $lineCount | sed 's/^[[:space:]]*//'`

    # Convert myVar into an array so I can just get the line number
    #array=($myVar)
    #lineNum=${array[0]}
    #echo "Line number is: $lineNum"
    
    #echo "My final project *guessinggame.sh* has $lineNum lines." >> README.md
