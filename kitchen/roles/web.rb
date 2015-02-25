
execute "update a package manager" do
  command "apt-get -y update"
end

include_recipe "../recipes/nginx.rb"
include_recipe "../recipes/php.rb"
