compgen -c > /home/vagrant/text.txt

echo  "Enter any server for status: "
read s ;grep "$s" /home/vagrant/text.txt && l=1 || l=0

clear

if [ "$l" -eq  "1" ]
then
        echo -e "\tDo you want to uninstall: [y | n]"
        read option
        if [ "$option" = "y" ]
        then
                yes | sudo yum remove "$s"
                echo -e "\t "$s" is successfully uninstalled"
        else
                echo "User choose to exit"
                exit
        fi
else
       echo -e "\tDo you want to install: [y | n]"

        read option
        if [ "$option" = "y" ]
        then
                yes | sudo yum install "$s"
                echo -e "\t "$s" is successfully installed"
        else
                echo "User choose to exit"
                exit
        fi
fi

