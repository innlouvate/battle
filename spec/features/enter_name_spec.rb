require 'spec_helper'

feature "Player login" do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_text("Lou and Zee do battle!!!")
  end
end
