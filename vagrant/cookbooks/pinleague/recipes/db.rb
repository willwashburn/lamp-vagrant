include_recipe "database::mysql"

mysql_connection_info = {
  :host => "localhost",
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database node['myapp']['database']['name'] do
  connection mysql_connection_info
  action :create
end

mysql_database_user node['myapp']['database']['user'] do
  connection mysql_connection_info
  password node['myapp']['database']['password']
  database_name node['myapp']['database']['name']
  host '%'
  action :grant
end
