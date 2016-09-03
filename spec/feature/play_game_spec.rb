require 'spec_helper'

feature 'marketer will be presented 3 choices' do
  scenario 'choose rock, paper, scissors' do
    sign_in_and_submit_name
    click_button 'Rock'
    expect(page).to have_content 'You choose Rock'


  end
end
