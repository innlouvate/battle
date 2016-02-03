require 'spec_helper'

feature 'Viewing hitpoints' do
    scenario "Players can view other players hitpoints" do
      sign_in_and_play
      expect(page).to have_content("Lou: 100hp")
  end
end
