require 'spec_helper.rb'

def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Omar'
  fill_in :player_2_name, with: 'John'
  click_button 'Submit'
end