#!/usr/bin/env ruby
require 'eventmachine'
require 'websocket-eventmachine-server'

PORT = (ARGV.shift || 8080).to_i

EM::run do

  options = {
    host: "0.0.0.0",
    port: PORT,
    secure: true
  }

  puts "starting websocket server on port #{PORT}"

  WebSocket::EventMachine::Server.start(options) do |ws|
    ws.onopen do
      puts "Client connected"
    end

    ws.onmessage do |msg|
      puts "Received message: #{msg}"
      ws.send 'ACK'
    end

    ws.onclose do
      puts "Client disconnected"
    end
  end

end
