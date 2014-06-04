require 'spec_helper'

feature 'Admin dashboard' do
  let(:message) { 'Character images are up to date. No action is required' }
  let(:mary_jane) { create(:hero) }
  let(:norman_osborn) { create(:villain) }
  let(:create_characters) { mary_jane and norman_osborn }
  
  scenario 'fetches character images from Marvel API' do
    create_characters
    visit admin_dashboard_path
    expect(page).to have_content 'Admin Dashboard'
    click_button 'Fetch'
    expect(page).to have_content(message)
  end
end
