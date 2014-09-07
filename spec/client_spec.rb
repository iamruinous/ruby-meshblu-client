require 'spec_helper'

describe Meshblu::Client do
  before :each do
    @sut = Meshblu::Client::Base.new(
      :host            => 'http://example.com',
      :uuid            => 'some-uuid',
      :token           => 'token',
    )
  end
  describe '.new' do
    it 'set the host' do
      expect(@sut.host).to eq 'http://example.com'
    end
  end
end
