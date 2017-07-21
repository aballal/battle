require_relative 'web_helpers'

feature 'Attacking' do
  before do
    sign_in_and_play
    click_button('Attack')
  end

  scenario 'attack player 2' do
    expect(page).to have_content 'Batman attacked Superman'
  end

  scenario 'reduce player 2 HP by 10' do
    click_button('OK')
    expect(page).to have_content 'Superman: 50 HP'
  end

end
