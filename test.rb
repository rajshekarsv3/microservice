require 'barrister'

# specify URL to the server endpoint
trans = Barrister::HttpTransport.new("http://localhost:3000/postapi")

# automatically connects to endpoint and loads IDL JSON contract
# also creates proxy classes on client - one per interface in the IDL
client = Barrister::Client.new(trans)

# make a RPC call
#
# in this example the server exposes a "Calculator" interface 
# that contains a "add" method.
#
puts client.NovelService.get_all_novels()