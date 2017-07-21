require_relative 'web_helpers'

feature 'View hit points' do
  before do
    sign_in_and_play
  end

  scenario 'view player 1 hit points' do
    expect(page).to have_content 'Batman: 60 HP'
  end

  scenario 'view player 2 hit points' do
    expect(page).to have_content 'Superman: 60 HP'
  end

  scenario 'view player 2 hit points after attack' do
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Superman: 50 HP'
  end
end
