require 'yaml'
require_relative('mylogger.class.rb')
require_relative('geoserver.class.rb')

#get logger
myLogger = MyLogger.new('server.log', "#{__dir__}/logs")

# getconfig
config = YAML.load_file("#{__dir__}/config/config.yml")

#start server
server = GeoServer.new(config['server_port'], config['server_password'], config['response_msg'], myLogger)
server.start()
