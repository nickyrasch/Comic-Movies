class Marvel
  include HTTParty

  def self.fetch_data(id)
    uri = URI.parse(URI.encode("http://gateway.marvel.com/v1/public/characters/#{id}?#{MarvelParameters.credentials}"))
    response = HTTParty.get(uri)
    response_body = JSON.parse(response.body)
    begin
      results = response_body['data']['results'][0]
      image = response_body['data']['results'][0]['thumbnail']['path']
      link = response_body['data']['results'][0]['urls'][0]['url']
    rescue Exception => e
      puts "Marvel fetch data exception: #{e.message}"
    end
    {image: image, link: link}
  end
end
