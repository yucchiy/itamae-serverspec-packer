%w{php5-cli php5-mysql php5-common php5-redis php5-mcrypt php5-memcached php5-fpm}.each do |pkg|
  package pkg
end

service "php5-fpm" do
  subscribes :reload,
    "template[/etc/php5/fpm/pool.d/www.conf]"
end

template "/etc/php5/fpm/pool.d/www.conf" do
  source "conf/php/www.conf.erb"
end
