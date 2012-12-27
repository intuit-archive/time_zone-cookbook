name             'time_zone'
maintainer       'Thomas Bishop'
maintainer_email 'thomas_bishop@intuit.com'
license          'All rights reserved'
description      'Installs/Configures time_zone'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{redhat centos}.each do |os|
  supports os
end
