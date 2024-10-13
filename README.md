# Nginx Mastery

## Start server
```
docker pull nginx
docker run -it --rm -d -p 8000:80 --name website nginx
```

## Verify installation
```
curl localhost:8000
docker top website
```

## Basic Service Management
```
docker exec -it website /bin/bash
nginx -v
service nginx start
service nginx stop
```

## Start
```
docker-compose up
```

## Debug on the DNS Server
```
nslookup ns.main.com 127.0.0.1
dig @127.0.0.1 ns.main.com
```


## NGINX 
apt update
apt install nano
nginx -s reload

chmod u-wx,g-wxr,o-wx nginx_backup.conf
