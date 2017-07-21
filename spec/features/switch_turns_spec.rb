require_relative 'web_helpers'

feature 'Switch turns' do
  context 'see the current turn' do
    before do
      sign_in_and_play
    end

    scenario 'at the start of the game' do
      expect(page).to have_content "Batman's turn"
    end

    scenario 'after player 1 attacks' do
      click_button('Attack')
      click_button('OK')
      expect(page).to have_content "Superman's turn"
    end
  end
end
