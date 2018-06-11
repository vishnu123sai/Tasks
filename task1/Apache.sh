echo -e "--------------------------------Apache web server-------------------------------\n"


yes | sudo yum install httpd 

echo "------------------------------------Apache web server installed-----------------------------------"

systemctl restart httpd

echo -e  "\t--------------- Apache wweb service is running (Active)-------------------------------------" 

sudo vi /var/www/html/index.html 

chmod 777 /var/www/html/index.html

lynx  10.0.2.15   

sudo rm -rf /var/www/html/index.html

yes | sudo yum remove httpd

echo "---------------------------------Apache server uninstalled--------------------------------------" 

