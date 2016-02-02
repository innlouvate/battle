require 'spec_helper'

feature 'View hit points' do
  scenario 'See Player hit points' do
    visit '/'

    fill_in 'player1_name', with: 'Lou'
    fill_in 'player2_name', with: 'Mic'
    click_button 'Battle!'

    expect(page).to have_content("Lou [100hp]")
  end
end
