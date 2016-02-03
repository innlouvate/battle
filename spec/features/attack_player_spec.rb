require 'spec_helper'

feature "Player Attack" do
  scenario "Player 1 attacks Player 2 and receives confirmation" do
    sign_in_and_play

    click_button "Attack"

    expect(page).to have_content "Lou attacked Zee and they lost 10hp"
  end
end
