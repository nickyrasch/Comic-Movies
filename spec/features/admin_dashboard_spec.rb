require 'spec_helper'

feature 'Admin dashboard' do
  let(:message) { 'Character images are up to date. No action is required' }
  let(:admin) { Admin.create(email: 'admin@ex.com',
                             password: 'password',
                             password_confirmation: 'password') }

  scenario 'fetches character images from Marvel API' do
    visit admin_dashboard_path
    login admin
    expect(page).to have_content 'Admin Dashboard'
    click_button 'Fetch'
    expect(page).to have_content(message)
  end
end
