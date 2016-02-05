feature 'Freezing player' do

  scenario 'player_2 freezes player_1' do
    sign_in_and_play_for1
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Attack!'
    click_button 'Play again!'
    And wait 5 seconds
    expect(page).to have_content 'Birthday froze Heather!'
  end

  scenario 'player_2 failed to freeze player_1' do
    sign_in_and_play_for1
    allow(Kernel).to receive(:rand).and_return(1)
    click_button 'Attack!'
    click_button 'Play again!'
    And wait 5 seconds
    expect(page).to have_content 'Birthday failed to freeze Heather!'
  end

end
