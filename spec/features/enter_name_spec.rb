require "spec_helper"

feature "Enter name" do
  scenario "Players enter names" do
    visit "/"

    fill_in "player1_name", with: "Player 1"
    fill_in "player2_name", with: "Player 2"
    click_button "Battle!"

    expect(page).to have_text("Player 1 vs. Player 2")
  end
end
