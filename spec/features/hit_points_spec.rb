require 'spec_helper'

feature 'View hit points' do
  scenario 'See Player hit points' do
    sign_in_and_play
    expect(page).to have_content("Lou [100hp]")
  end
end
