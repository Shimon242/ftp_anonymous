sudo apt update
sudo apt install vsftpd -y
sudo systemctl enable vsftpd
sudo systemctl start vsftpd
sudo nano /etc/vsftpd.conf
anonymous_enable=YES
local_enable=NO
write_enable=NO
anon_upload_enable=NO
anon_mkdir_write_enable=NO
sudo mkdir -p /srv/ftp
sudo chmod 755 /srv/ftp
echo "Hello FTP World" | sudo tee /srv/ftp/readme.txt
sudo systemctl restart vsftpd
ftp localhost
