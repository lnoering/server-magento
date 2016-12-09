# In construction.

## Linux to use - CentOS 7
## Version      - 0.1

# Use for install:

- Security
  	-- Add user to access server.
  	-- Remove root to access with ssh.
  	-- Firewall
  	-- Swap
  	-- Ntp
  	-- Set timezone
- Nginx
	-- Modules
		--- with-http_ssl_module \
		--- with-http_realip_module \
		--- with-http_addition_module \
		--- with-http_sub_module \
		--- with-http_dav_module \
		--- with-http_flv_module \
		--- with-http_mp4_module \
		--- with-http_gunzip_module \
		--- with-http_gzip_static_module \
		--- with-http_random_index_module \
		--- with-http_secure_link_module \
		--- with-http_stub_status_module \
		--- with-http_auth_request_module \
		--- with-mail \
		--- with-mail_ssl_module \
		--- with-file-aio \
		--- with-http_spdy_module \
		--- with-http_geoip_module \
- PHP
	-- Version 7
	-- Extensions
		--- php70w-fpm
		--- php70w-pecl-redis
		--- php70w-mcrypt 
		--- php70w-gd
		--- php70w-xml
		--- php70w-xmlrpc
		--- php70w-pecl-apcu

- Database (percona)
	-- Percona-Server-client-56 
	-- Percona-Server-server-56
	-- Create
		--- Database
		--- User
			---- Permissions - { CREATE,DELETE,INSERT,SELECT,UPDATE } to Database

- Redis
	-- (X) Create instance for cache backend
	-- (X) Create instance for sessions
	-- ??

- Varnish
	-- ??