module PortalApi
    include HTTParty
    base_uri 'https://portal.vr.com.br/api-web'
    format :json
end