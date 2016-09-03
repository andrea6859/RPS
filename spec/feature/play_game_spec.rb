require 'spec_helper'

feature 'marketer will be presented 3 choices' do
  scenario 'choice of rock, paper, scissors' do
    sign_in_and_submit_name
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
