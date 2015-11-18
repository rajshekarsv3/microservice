

class Services

  def self.novel_service
    @@services ||= proxy_services
    @@services[:novel_service]
  end
  
  def self.proxy_services

    service  = NovelService.new()
    
    idl      = './services/novel_service/interface.json'
    client   = Barrister::Rails::Client.new service, idl

    { novel_service: client.NovelService }
  end

end