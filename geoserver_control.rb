#!/usr/bin/ruby
=begin
mainfile to control the server.
=end

require 'daemons'
Daemons.run('geoserver.rb')
