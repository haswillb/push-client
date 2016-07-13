require 'httparty'
require 'json'

class Request
  def initialize(public_key, private_key)
    @public_key = public_key
    @private_key = private_key
  end

  def make_request(app_id, message)
    url = "https://ma.tune.com/public_api/v2/apps/#{app_id}/push"
    response = HTTParty.post(url,
                             body: message.to_json,
                             headers: { 'Content-Type' => 'application/json', 'Public-Api-Key' => @public_key, 'Authorization' => "Token token=#{@private_key}" } )
    STDOUT.puts response
  end
end
