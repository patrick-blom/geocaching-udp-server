=begin
server class, this class starts the server and handles the request
=end
require 'socket'

class GeoServer

  def initialize(port, password, responsemsg, logger)

    @port = port
    @password = password
    @responsemsg = responsemsg
    @logger = logger

    @ds = UDPSocket.new
  end

  def start
    @ds.bind('localhost', @port)

    loop do
      request, address = @ds.recvfrom(1024)
      if request == @password

        clientAddress = address[3]
        clientPort = address[1]

        @ds.send(@responsemsg, 0, clientAddress, clientPort)

        @logger.writeToLog("send coords to #{clientAddress}:#{clientPort}")
      else
        @logger.writeToLog("#{clientAddress}:#{clientPort} tried to get the coords with wrong password: #{request}")
      end
    end

  end

end