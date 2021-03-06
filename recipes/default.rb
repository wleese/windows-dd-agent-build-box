#
# Cookbook Name:: dd-agent-windows-build-box
# Recipe:: default
#
# Copyright 2015, Datadog Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe "omnibus"

if ENV['OMNIBUS_USER']
  build_user = ENV['OMNIBUS_USER']
else
  build_user = ENV['USER'] || 'omnibus'
end

# And finally let's clonedd-agent-omnibus and install the binstubs for it
git 'dd-agent-omnibus' do
  destination "C:/Users/#{build_user}/dd-agent-omnibus"
  repository 'https://github.com/DataDog/dd-agent-omnibus.git'
  revision 'etienne/omnibus-4-windows'
  user build_user
  action :sync
end

# Let's install the binstubs for Omnibus
execute 'install_binstubs' do
  cwd "C:/Users/#{build_user}/dd-agent-omnibus"
  user build_user
  command "bundle install --binstubs"
end
