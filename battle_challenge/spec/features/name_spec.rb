# require 'capybara'
require 'spec_helper'
# visit('http://localhost:4567/')

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Heather'
    fill_in :player_2, with: 'Birthday'
    click_button 'Submit'
    expect(page).to have_content 'Heather vs. Birthday'
    expect(page).to have_content'Heather: 60HP'
  end
end
