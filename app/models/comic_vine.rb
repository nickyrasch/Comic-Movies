class ComicVine
  include HTTParty

  def initialize(ids)
    @ids = ids.join('|')
  end

  def fetch_characters
    uri = URI.parse(URI.encode("http://comicvine.com/api/characters/?filter=id:#{@ids}&api_key=#{ComicVine.api_key}&format=json".strip))
    response = HTTParty.get(uri)    
    results = JSON.parse(response.body)
    results 
  end

  private
  def self.api_key
    ENV['COMIC_VINE_KEY']
  end  
end
