#
# Cookbook Name:: time_zone
# Recipe:: default
#
# Copyright (C) 2012 Intuit, Inc.
#
# All rights reserved - Do Not Redistribute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
template '/etc/sysconfig/clock' do
  owner 'root'
  group 'root'
  mode '0644'
  source 'clock.erb'
  variables :zone => node['time_zone']
end

link '/etc/localtime' do
  to "/usr/share/zoneinfo/#{node['time_zone']}"
  not_if "readlink /etc/localtime | grep -q '#{node['time_zone']}$'"
end
