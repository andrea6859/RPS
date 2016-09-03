require 'spec_helper'

feature 'play game' do
  scenario 'choose rock, paper, scissors' do
    sign_in_and_submit_name
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'computer chooses "Rock"' do
    sign_in_and_submit_name
    click_button 'Rock'
    expect(page).to have_content 'Computer chooses rock'
  end


end
