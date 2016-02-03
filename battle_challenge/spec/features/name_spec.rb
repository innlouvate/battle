# require 'capybara'
require 'spec_helper'
# visit('http://localhost:4567/')

feature 'Enter names' do
  scenario 'submitting names and display health points.' do
    sign_in_and_play
    expect(page).to have_content 'Heather vs. Birthday'
    expect(page).to have_content'Heather: 60HP'
  end
end

feature 'Attack player' do
  scenario 'player_1 is going to attack player_2.' do
    sign_in_and_play
    click_button 'Attack Birthday!'
    expect(page).to have_content 'You attacked Birthday!'
  end
end
