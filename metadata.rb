name             'time_zone'
maintainer       'Thomas Bishop'
maintainer_email 'thomas_bishop@intuit.com'
license          'Apache 2.0'
description      'Configures time_zone'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
recipe 'time_zone', 'Configures the OS time zone'

%w{redhat centos}.each do |os|
  supports os
end
