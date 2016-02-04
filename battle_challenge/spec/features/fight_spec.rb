feature 'Fighting player' do

  scenario 'player_1 is going to attack player_2.' do
    sign_in_and_play
    click_button 'Attack Birthday!'
    expect(page).to have_content 'You attacked Birthday!'
  end

  scenario 'HPs are reduced when attacked' do
    sign_in_and_play
    click_button 'Attack Birthday!'
    click_button 'Play again!'
    expect(page).to have_content 'Birthday: 58HP'
  end

end
