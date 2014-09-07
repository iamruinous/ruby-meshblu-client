require 'meshblu/client/base'

module Meshblu
  module Client
    def self.new(options={})
      Meshblu::Client::Base.new options
    end
  end
end
