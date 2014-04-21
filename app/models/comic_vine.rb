class ComicVine
  include HTTParty

  def self.fetch_characters(ids)
    puts "PERFORMING API CALL"
    ids = ids.join('|')
    uri = URI.parse(URI.encode("http://comicvine.com/api/characters/?filter=id:#{ids}&api_key=#{ComicVine.api_key}&format=json".strip))
    response = self.get(uri)    
    results = JSON.parse(response.body)
    results['results']  
  end

  private
  def self.api_key
    ENV['COMIC_VINE_KEY']
  end  
end