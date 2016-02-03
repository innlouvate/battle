require 'spec_helper'

feature "Player login" do
  scenario "Players enter their names" do
    visit '/'

    fill_in "Player_1", with: "Lou"
    fill_in "Player_2", with: "Zee"

    click_button "Submit names"

    expect(page).to have_text("Lou and Zee do battle!!!")
  end
end
