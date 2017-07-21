require_relative 'web_helpers'

feature 'Attacking' do
  before do
    sign_in_and_play
    click_button('Attack')
  end

  context 'Player 1 attacks player 2' do
    scenario 'attack player 2' do
      expect(page).to have_content 'Batman attacked Superman'
    end

    scenario 'reduce player 2 HP by 10' do
      expect(page).to have_content 'Superman: 50 HP'
    end
  end

  context 'Player 2 attacks player 1' do
    before do
      click_button('OK')
      click_button('Attack')
    end

    scenario 'attack player 1' do
      expect(page).to have_content 'Superman attacked Batman'
    end

    scenario 'reduce player 1 HP by 10' do
      expect(page).to have_content 'Batman: 50 HP'
    end
  end

end
