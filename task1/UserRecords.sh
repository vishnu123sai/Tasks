echo -e "----------------USER DETAILS-------------------"
while [ true ]
do
	echo -e"\n\n"
	echo -e "\t1.adding the user with phone number and mail id.\n 
	2.Search with user name. \n
	3.Delete the records with respect to username \n 
	4. None of the selection, exit from the script \n"
	read option
	case $option in
	1)
echo -e -e "\tAdd user here"
	echo -e "\tEnter username"
	read name
	[ -e records/"$name".txt ] && l=1 || l=0
	echo "$l"
	if((l==0))
	then
	echo "$name" >> records/"$name".txt
	echo -e "\tEnter user phno"
	read pno
	echo "$pno" >> records/"$name".txt
	echo -e "\tEnter mail id"
	read mailid 
	echo "$mailid" >> records/"$name".txt
	fi
	;;
	2)
		echo -e "\n\n---------------\tWhom do you want to find------------------------------"
		read tname
		 [ -e records/"$name".txt ] && l=1 || l=0
		 if((l==1))
		then
	        cat records/"$tname".txt
		else
		echo -e "\t\tuser not found"
		fi
	;;
	3)
		echo -e "\n\n\t----------------------------whom do you want to delete--------------------------"
		read del
		 [ -e records/"$name".txt ] && l=1 || l=0
		 if((l==1))
		 then
		rm -rf records/"$del".txt
		echo -e "\n\t\tuser "$del" removed from records"
		else
		echo -e "\t\tuser not found"
		fi
        ;;
        4) exit
        ;;		

	esac


done
