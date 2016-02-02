def sign_in_and_play
  visit '/'
  fill_in 'player1_name', with: 'Lou'
  fill_in 'player2_name', with: 'Mic'
  click_button 'Battle!'
end
