require_relative '../lib/meshblu/client/base'

client = Meshblu::Client::Base.new(
  :host => ARGV[0],
  :uuid => 'fb0e37a1-15be-11e4-9817-e53089681728',
  :token => '0uxutb14o3g3z0k9pxr2xhe0g9dd9529',
)

client.once :connect do
  puts 'connected'

  client.on :message do |data|
    puts data
  end

  client.on :messageAck do |data|
    puts data
  end

  client.on :config do |data|
    puts 'config'
    puts data
  end

  client.on :ready do
    puts 'ready'
    client.emit :whoami
    client.emit :status
    exit 0
  end

  client.on :status do |data|
    puts data
  end

  client.on :notReady do
    puts 'Auth failed'
  end

  client.on :identify do
    puts 'wants id'
    puts 'sending id'
    client.emit :identity, :uuid => client.uuid, :token => client.token
  end

  client.on :tb do |data|
    puts data
  end

  client.on :unboundSocket do
    print 'unboundSocket'
  end
end

client.on :error do |err|
  p err
end

puts 'entering main loop'
loop do
end
