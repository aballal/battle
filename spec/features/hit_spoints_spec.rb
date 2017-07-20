feature 'View hit points' do
  scenario 'view player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Batman'
    fill_in :player_2_name, with: 'Superman'
    click_button('Submit')
    expect(page).to have_content 'Superman: 60 HP'
  end
end
