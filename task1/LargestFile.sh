cd / ;l=$(ls -S | head -1)
echo "Large file in '/' is $l"
sudo tar -cf Etc.tar $l
sudo mv -v Etc.tar /tmp
echo "------------------------ Etc.tar is moved to /tmp file---------------------------------------- "
