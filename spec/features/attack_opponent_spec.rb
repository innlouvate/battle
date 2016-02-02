require 'spec_helper'

feature 'Attack opponent' do
  scenario 'Player 1 (Lou) attacks their opponent' do
    sign_in_and_play
    click_button ('Attack!')
    expect(page).to have_content('Lou attacks Mic!')
  end
end
