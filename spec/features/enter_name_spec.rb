require 'spec_helper'

feature 'Enter player names' do
  scenario 'Display player names' do
    visit '/'

    fill_in 'player1_name', with: 'Lou'
    fill_in 'player2_name', with: 'Mic'
    click_button 'Battle!'

    expect(page).to have_content('Lou')
  end
end
