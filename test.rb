# frozen_string_literal: true

require 'webrick'

server = WEBrick::HTTPServer.new({
  :DocumentRoot => '.',
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  :Port => '3000',
})

['INT', 'TERM'].each { |signal|
  Signal.trap(signal){server.shutdown}
}

# if '/test' is sent, show 'test.html.erb'
server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
server.mount('/indicate', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/goya', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')
server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'index.html.erb')
server.mount('/goya_not_self_consumption', WEBrick::HTTPServlet::CGIHandler, 'goya_not_self_consumption.rb')
server.mount('/goya_quality_false', WEBrick::HTTPServlet::CGIHandler, 'goya_quality_false.rb')

server.start
