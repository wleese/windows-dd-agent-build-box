if ENV['OMNIBUS_USER']
  build_user = ENV['OMNIBUS_USER']
else
  build_user = ENV['USER'] || 'omnibus'
end

default['omnibus']['build_user'] = build_user
default['omnibus']['install_dir'] = 'C:/Program Files/Datadog/Agent'
