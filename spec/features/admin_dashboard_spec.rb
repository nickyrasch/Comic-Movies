require 'spec_helper'

feature 'Admin dashboard' do
  scenario 'has a file field' do
    visit admin_dashboard_path
    expect(page).to have_content 'Admin Dashboard'
    expect(page).to have_content 'Fetch Marvel Images'
    click_button 'Fetch'
    expect(page).to have_content 'Images fetched successfully'
  end
end