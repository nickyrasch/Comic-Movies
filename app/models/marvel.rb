class Marvel
  include HTTParty

  def self.fetch_data(id)
    uri = URI.parse(URI.encode("http://gateway.marvel.com/v1/public/characters/#{id}?#{MarvelParameters.credentials}"))
    response = HTTParty.get(uri)
    response_body = JSON.parse(response.body)
    results = response_body['data']['results'][0]
    image = response_body['data']['results'][0]['thumbnail']['path']
    link = response_body['data']['results'][0]['urls'][0]['url']
    {image: image, link: link}
  end
end
