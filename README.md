# Nginx Configuration


## Ubuntu VM

### Create Server
<img src="/pictures/ubuntu.png" title="ubuntu"  width="900">

### Init

- install nginx : install_nginx.txt

- in /etc/nginx/nginx.conf comment out include /etc/nginx/sites-enabled/*;

- push files : nginx_config.txt

- reload config :
```
sudo nginx -s reload
```

### Configure

- test other domains
```
curl --header "Host: example.com" localhost
```

- admin page
```
sudo apt-get -y install apache2-utils
sudo htpasswd -c /etc/nginx/.htpasswd admin
curl localhost/admin.html
curl -u admin:password localhost/admin.html
```
<img src="/pictures/admin.png" title="admin"  width="900">
<img src="/pictures/admin1.png" title="admin"  width="900">
```

### Self-signed Certificate

- make a certificate request
```
sudo mkdir /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 360 \
-newkey rsa:2048 \
-keyout /etc/nginx/ssl/private.key \
-out /etc/nginx/ssl/public.pem
```

- check
```
ls /etc/nginx/ssl
curl -k https://localhost
```
<img src="/pictures/ssl.png" title="ssl"  width="900">

### Modules

- list of modules in Nginx
```
nginx -V 2>&1 | tr -- - '\n' | grep module
```





## Nginx Mastery

### Start server
```
docker pull nginx
docker run -it --rm -d -p 8000:80 --name website nginx
```

### Verify installation
```
curl localhost:8000
docker top website
```

### Basic Service Management
```
docker exec -it website /bin/bash
nginx -v
service nginx start
service nginx stop
```

### Start
```
docker-compose up
```

### Debug on the DNS Server
```
nslookup ns.main.com 127.0.0.1
dig @127.0.0.1 ns.main.com
```
