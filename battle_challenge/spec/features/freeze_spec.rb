
feature 'Freezing player' do

  scenario 'player_1 freezes player_2.' do
    sign_in_and_play
    click_button 'Freeze!'
    expect(page).to have_content 'Heather froze Birthday!'
  end

  scenario 'HPs are same when frozen' do
    sign_in_and_play
    random = rand(10)
    hp = Player::DEFAULT_HP - random
    allow(Kernel).to receive(:rand).and_return(random)
    click_button 'Freeze!'
    click_button 'Play again!'
    expect(page).to have_content "Birthday: #{Player::DEFAULT_HP}HP"
  end

  scenario 'Other players hp are the same when frozen' do
    sign_in_and_play
    random = rand(10)
    hp = Player::DEFAULT_HP - random
    allow(Kernel).to receive(:rand).and_return(random)
    click_button 'Freeze!'
    click_button 'Play again!'
    click_button 'Freeze!'
    click_button 'Play again!'
    expect(page).to have_content "Heather: #{Player::DEFAULT_HP}HP"
  end

end
