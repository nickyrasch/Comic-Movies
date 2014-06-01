require 'spec_helper'

describe ComicVine do
  let(:success) { 1 }
  let(:ids) { [1443, 13380] }
  let(:comic_vine) { ComicVine.new(ids) }
  let(:results) { comic_vine.call_api }
  let(:perform_api_call) { results }

  before :each do
    perform_api_call
  end

  it 'performs a successful API call' do
    expect(results['status_code']).to eq success
    expect(results['results'].count).to eq ids.count
    expect(results['results'][0]['name'].length).to_not eq 0    
    expect(results['results'][0]['description'].length).to_not eq 0
    expect(results['results'][0]['first_appeared_in_issue']['name'].length).to_not eq 0    
    expect(results['results'][0]['first_appeared_in_issue']['issue_number'].length).to_not eq 0    
  end
end
