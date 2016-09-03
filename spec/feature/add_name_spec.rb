require 'spec_helper'

feature 'register name' do
  scenario 'add and submit name' do
    visit '/'
    fill_in :name, with: 'Andrea'
    click_button 'Submit'
    expect(page).to have_content 'Andrea'
  end
end
