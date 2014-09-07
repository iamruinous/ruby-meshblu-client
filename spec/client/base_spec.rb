require 'spec_helper'

describe Meshblu::Client::Base do
  before :each do
    @sut = Meshblu::Client::Base.new(
      :host            => 'http://example.com',
      :uuid            => 'some-uuid',
      :token           => 'token',
      :socket_io_class => FakeSocketIoClient,
    )
  end
  describe '.new' do
    it 'set the host' do
      expect(@sut.host).to eq 'http://example.com'
    end

    it 'set the uuid' do
      expect(@sut.uuid).to eq 'some-uuid'
    end

    it 'set the token' do
      expect(@sut.token).to eq 'token'
    end
  end

  describe '#connection' do
    it 'should connect' do
      expect(@sut.connection).to be
    end
  end
end


class FakeSocketIoClient
  def self.connect(host)
    true
  end
end
