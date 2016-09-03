require 'spec_helper'

feature 'register name' do
  scenario 'add and submit name' do
    sign_in_and_submit_name
    expect(page).to have_content 'Andrea'
  end
end
