exit
cd /home/my-app
vim docker-compose.yml
nano docker-compose.yml
mkdir /home/my-app/html
echo "<h1>Bienvenido a braveapp</h1>" > /home/my-app/html/index.html
nano /home/my-app/nginx.conf
docker-compose up -d
docker ps
echo "url=\"https://www.duckdns.org/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2\"" | curl -K -
ping -c 4 8.8.8.8
nslookup www.duckdns.org
sudo dnf install bind-utils
exit
sudo dnf install bind-utils
exit
sudo dnf install bind-utils
nslookup www.duckdns.org
echo "url=\"https://www.duckdns.org/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2\"" | curl -K -
cat /etc/resolv.conf
curl -v "https://www.duckdns.org/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2"
curl -v --dns-servers 8.8.8.8 "https://www.duckdns.org/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2"
curl -v https://www.google.com
nslookup www.duckdns.org
curl -v "https://3.99.117.253/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2" -H "Host: www.duckdns.org"
sudo nano /etc/resolv.conf 
nslookup www.duckdns.org
sudo nano /etc/resolv.conf 
nslookup www.duckdns.org
curl -v "https://www.duckdns.org/update?domains=braveapp&token=4f4acd9e-9dd2-435b-a389-47dacef57959&ip=206.189.196.2"
sudo nmcli con mod "System eth0" ipv4.dns "8.8.8.8 8.8.4.4"
nmcli con show
sudo nmcli con mod "System eth0" ipv4.dns "8.8.8.8 8.8.4.4"
sudo systemctl restart NetworkManager
sudo dnf update -y
sudo reboot
nmcli --version
NetworkManager --version
sudo nmcli con mod "System eth0" ipv4.dns "8.8.8.8 8.8.4.4"
sudo nmcli con mod "System eth0" ipv4.ignore-auto-dns yes
sudo nmcli con up "System eth0"
cat /etc/resolv.conf
sudo nano /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg
sudo reboot
clear
sudo dnf install -y epel-release
sudo dnf install -y certbot python3-certbot-nginx
sudo certbot --nginx -d braveapp.duckdns.org
cd /home/my-app
docker-compose stop web
sudo certbot certonly --standalone -d braveapp.duckdns.org
sudo ls /etc/letsencrypt/live/braveapp.duckdns.org/
mkdir -p /home/my-app/certs
sudo cp /etc/letsencrypt/live/braveapp.duckdns.org/fullchain.pem /home/my-app/certs/
sudo cp /etc/letsencrypt/live/braveapp.duckdns.org/privkey.pem /home/my-app/certs/
sudo chown my-app:my-app /home/my-app/certs/*
nano /home/my-app/nginx.conf
ls
nano docker-compose.yml
cd /home/my-app
docker-compose up -d
sudo certbot renew --dry-run
sudo systemctl start certbot-renew.timer
sudo systemctl enable certbot-renew.timer
nano /home/my-app/renew-cert.sh
chmod +x /home/my-app/renew-cert.sh
sudo nano /etc/cron.d/certbot
exit
