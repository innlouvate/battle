require 'spec_helper'

feature 'Enter player names' do
  scenario 'Display player names' do
    sign_in_and_play
    expect(page).to have_content('Lou')
  end
end
