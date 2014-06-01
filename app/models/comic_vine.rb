class ComicVine
  include HTTParty

  def initialize(ids)
    @ids = ids.join('|')
  end

  def fetch_characters
    results = call_api
    collect_characters(results)
  end

  def call_api
    uri = URI.parse(URI.encode("http://comicvine.com/api/characters/?filter=id:#{@ids}&api_key=#{ComicVine.api_key}&format=json".strip))
    response = HTTParty.get(uri)    
    results = JSON.parse(response.body)
  end

  private
  def collect_characters(results)
    results = results['results']
    results.map do |result|
      character = Character.find_or_create_by(comic_vine_id: result['id'])
      character.assign_attributes(
        name: result['name'],
        description: result['deck'],
        first_appearance_comic_name: result['first_appeared_in_issue']['name'],
        first_appearance_issue_number: result['first_appeared_in_issue']['issue_number'],
        side_id: character.side_id,
        comic_vine_link: result['site_detail_url'])

      character
    end
  end   

  def self.api_key
    ENV['COMIC_VINE_KEY']
  end  
end
