include_recipe "apt"

%w(build-essential libwebp-dev libpng-dev libjpeg-dev libbz2-dev libfreetype6-dev libtiff-dev libxml2-dev libjasper-dev libwmf-dev liblcms-dev).each do |pkg|
  package pkg
end

bash "install graphicsmagick with binary file" do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    wget http://downloads.sourceforge.net/project/graphicsmagick/graphicsmagick/1.3.21/GraphicsMagick-1.3.21.tar.gz
    tar -zxvf GraphicsMagick-1.3.21.tar.gz
    cd GraphicsMagick-1.3.21
    ./configure
    make
    make install
  EOH
end



