=begin
simple logging class to log some messages into my local file system
=end

class MyLogger

  def initialize(filename, path)
    @filePointer = File.open(path+'/'+filename, 'a')
  end

  def writeToLog(msg)
    @filePointer.write("#{Time.now.to_s} #{msg}\n")
    @filePointer.flush
  end

end