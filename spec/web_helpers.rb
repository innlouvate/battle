def sign_in_and_play
  visit('/')
  fill_in "Player_1", with: "Lou"
  fill_in "Player_2", with: "Zee"
  click_button "Submit names"
end
