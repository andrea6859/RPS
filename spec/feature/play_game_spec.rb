require 'spec_helper'

PLAY_SEED = 123456

feature 'play game' do
  scenario 'choose rock, paper, scissors' do
    sign_in_and_submit_name
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end


 scenario 'computer chooses random option' do
   sign_in_and_submit_name
   srand(PLAY_SEED)
   click_button 'Paper'
   expect(page).to have_content 'Computer chooses paper'
 end

end
