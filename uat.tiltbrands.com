server {
    listen 80;
    server_name tiltbrandsportal.com;

    root /home/ubuntu/UAT;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}


