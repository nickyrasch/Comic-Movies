class Marvel
  include HTTParty
  base_uri 'gateway.marvel.com:80'

  def self.fetch_image(id)
    puts "Marvel API call:"
    response = 
        self.get("/v1/public/characters/#{id}?#{MarvelParameters.credentials}")
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
    image = response_body['data']['results'][0]['thumbnail']['path']
  end
end
