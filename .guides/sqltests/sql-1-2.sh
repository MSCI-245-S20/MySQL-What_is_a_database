#!/bin/bash
# Must match for erasing history
QCOUNT=2
sed -i "s@\\\040@ @g" $hist_file

# Run test
function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command "SELECT SURNAME FROM names;" "Display the SURNAME column from the 'names' table."
				;;
			2 )
				expect_command "SELECT NAME,id FROM names ORDER BY id DESC;" "Query only the 'NAME' and 'id' columns of the 'names' table and sort the results by descending order."
				;;			
		esac
	else		
		echo -e "Well done!"
		return 0
	fi
}


test_command