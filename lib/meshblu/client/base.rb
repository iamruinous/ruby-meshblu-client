require 'rubygems'
require 'socket.io-client-simple'

module Meshblu
  module Client
    class Base
      attr :host, :uuid, :token
      def initialize(options={})
        @host            = options[:host]
        @uuid            = options[:uuid]
        @token           = options[:token]
        @socket_io_class = options[:socket_io_class] || SocketIO::Client::Simple
      end

      def emit(*args)
        connection.emit *args
      end

      def on(*args, &block)
        connection.on *args, &block
      end

      def once(*args, &block)
        connection.once *args, &block
      end

      protected
      def connection
        @socket ||= @socket_io_class.connect @host
      end

    end
  end
end
