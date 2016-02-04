

feature 'Enter names' do
  scenario 'displays names in battle' do
    sign_in_and_play
    expect(page).to have_content 'Heather vs. Birthday'
  end

  scenario 'display health points' do
    sign_in_and_play
    expect(page).to have_content'Heather: 60HP'
    expect(page).to have_content'Birthday: 60HP'
  end
end
