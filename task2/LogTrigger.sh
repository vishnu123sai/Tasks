echo "=============================Send Logs to Mail================================"
sudo ls /var/log > Logdetails.txt
cat Logdetails.txt | mail -s "Logs added below " vishnu123sai@gmail.com -A Logdetails.txt
echo -e "\t mail sent please check your mail"
