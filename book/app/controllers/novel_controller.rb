require 'barrister'


class NovelController < ApplicationController
	def index
		@nls=Services.novel_service.get_all_novels.as_json
		contract = Barrister::contract_from_file("././services/novel_service/interface.json")
		server   = Barrister::Server.new(contract)
		server.add_handler("NovelService", NovelService.new)


	  	request.body.rewind
	  	resp = server.handle_json(request.body.read)
	  
	  	
	  	
	  	render :json => resp
	end
end

# class NovelController < ApplicationController
# 	@@data = File.read("././services/novel_service/interface.json")
# 	def index
#   	@nls=Services.novel_service.get_all_novels.as_json
#   	render :json => @@data
#   	end
# end
