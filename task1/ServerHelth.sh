

echo -e "\t=========================== Disk usaage============================================="
echo " "
cd / ; df -h
echo " "
echo -e "\t===================================== CPU Details===================================\n"
echo " "
lscpu
echo " "

echo -e "\t===================================Memory Details=================================\n"
echo " "
free -h | head -2
echo " "
echo -e "\t==========================================SWAP Details================================="
echo " "
free -h | head -1
free -h | tail -1 
echo " "
echo -e "\t================================Uptime and Load average========================="
echo " "
uptime
echo " "



