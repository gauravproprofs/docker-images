server {
      client_max_body_size 20M;

      # Server port and name
      listen       80;
      server_name oidsso.proprofs.com;

      # log files
      access_log  /var/log/nginx/oidsso.proprofs.com_access.log main;
      error_log   /var/log/nginx/oidsso.proprofs.com_error.log;

     ## Only requests to our Host are allowed
      if ($host !~ ^(oidsso.)?proprofs.com$ ) {
         return 444;
      }


     ## Only allow these request methods
     if ($request_method !~ ^(GET|HEAD|POST)$ ) {
         return 444;
     }


     ## PROXY - Web
      location / {
        proxy_pass http://app013:80;

        # Set headers
        proxy_set_header        Host            $host;
        proxy_set_header        X-Real-IP       $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;

        ### Most PHP, Python, Rails, Java App can use this header ###
        #proxy_set_header X-Forwarded-Proto https;

        ### By default we don't want to redirect it ####
        proxy_redirect     off;

      }



}

# oidsso.proprofs.com:443
server {
      client_max_body_size 20M;
      # Server port and name
      listen       443 ssl;
      server_name oidsso.proprofs.com;

      # Self-signed certificate and key
    ssl_certificate /etc/nginx/ssl/testr1.proprofs.io.crt;
    ssl_certificate_key /etc/nginx/ssl/testr1.proprofs.io.key;

    ssl_protocols TLSv1.2 TLSv1.3;
    ssl_ciphers HIGH:!aNULL:!MD5;

      # Add SSL specific settings here
      keepalive_timeout 60;


      # log files
      access_log  /var/log/nginx/oidsso.proprofs.com-ssl_access.log main;
      error_log   /var/log/nginx/oidsso.proprofs.com-ssl_error.log;

     ## Only requests to our Host are allowed
      if ($host !~ ^(oidsso.)?proprofs.com$ ) {
         return 444;
      }


     ## Only allow these request methods
     if ($request_method !~ ^(GET|HEAD|POST)$ ) {
         return 444;
     }


     ## PROXY - Web
      location / {

        proxy_pass http://app013:80;

        # Set headers
        proxy_set_header        Host            $host;
        proxy_set_header        X-Real-IP       $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;

        ### Most PHP, Python, Rails, Java App can use this header ###
        proxy_set_header X-Forwarded-Proto https;

        ### By default we don't want to redirect it ####
        proxy_redirect     off;


      }


}
