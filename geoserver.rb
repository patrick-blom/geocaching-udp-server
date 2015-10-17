require_relative('mylogger.class.rb')
require_relative('geoserver.class.rb')

myLogger = MyLogger.new('server.log', "#{__dir__}/logs")
server = GeoServer.new(1337, 'password', 'N52°14.745 E07°07.123', myLogger)
server.start()
