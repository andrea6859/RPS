require 'spec_helper'

def sign_in_and_submit_name
visit '/'
fill_in :name, with: 'Andrea'
click_button 'Submit'
end
