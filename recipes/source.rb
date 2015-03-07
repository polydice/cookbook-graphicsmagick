include_recipe "apt"

%w(build-essential libwebp-dev libpng-dev libjpeg-dev libbz2-dev libfreetype6-dev libtiff-dev libxml2-dev libjasper-dev libwmf-dev liblcms-dev).each do |pkg|
  package pkg
end

version = node[:graphicsmagick][:version]

remote_file "#{Chef::Config[:file_cache_path]}/GraphicsMagick-#{version}.tar.gz" do
  source node[:graphicsmagick][:url]
  mode "0644"
end

bash "build graphicsmagick" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    tar -zxf GraphicsMagick-#{version}.tar.gz
    (cd GraphicsMagick-#{version} && ./configure)
    (cd GraphicsMagick-#{version} && make && make install)
  EOH
end

