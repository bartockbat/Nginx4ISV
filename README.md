# Red Hat Ent 7 nginx
An nginx docker config using Red Hat Enterprise 7.x

Please refer to the comments in the Dockerfile and config files for instructions

to build:

1. git clone https://github.com/bartockbat/rhenginex.git
2. cd rhenginex
3. Check all of the config files - escpecially the Dockerfile and the Nginx config files. Verify all your configs.
4. sudo docker build -t rhel7_nginx .
5. to run simply sudo docker run -d nginx_rhel7
6. if you forget to modify the nginx.conf params, simply attach to the running container and modify
