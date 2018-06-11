echo "========================================================================="

echo -e "\n\n ==================ENTER URL=================="
read a ; curl -Is "$a" | head -1 > /home/vagrant/task2/urll.txt
sudo cd /home/vagrant/task2;grep "200 OK" urll.txt && l=1 || l=0 ; 
clear
if [ "$l" -eq "0" ]
then
echo -e "\t your URL is not working please check your mail"

cat /home/vagrant/task2/a.txt| mail -s "Please Trigger Your URL" vishnu123sai@gmail.com ; echo "mail sent"
else
echo -e " \t your URL is working properly"
fi
