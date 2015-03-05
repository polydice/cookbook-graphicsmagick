include_recipe "apt::default"

package "build-essential"
package "libwebp-dev"
package "libpng-dev"
package "libjpeg-dev"
package "libbz2-dev"
package "libfreetype6-dev"
package "libtiff-dev"
package "libxml2-dev"
package "libjasper-dev"
package "libwmf-dev"
package "liblcms-dev"

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



