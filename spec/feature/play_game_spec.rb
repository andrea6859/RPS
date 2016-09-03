require 'spec_helper'

feature 'play game' do

  PLAY_SEED = 123456

  scenario 'choose rock, paper, scissors' do
    sign_in_and_submit_name
    click_button 'Rock'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'computer chooses random option' do
    sign_in_and_submit_name
    srand(PLAY_SEED)
    click_button 'Paper'
    expect(page).to have_content 'Computer chooses paper'
  end


  scenario 'I win' do
    sign_in_and_submit_name
    srand(PLAY_SEED)
    click_button 'Scissors'
    expect(page).to have_content "You win!"
  end

  scenario 'I lose' do
    sign_in_and_submit_name
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content "You lose!"
  end

  scenario 'Draw' do
    sign_in_and_submit_name
    srand(PLAY_SEED)
    click_button 'Paper'
    expect(page).to have_content "Draw!"
  end

end
