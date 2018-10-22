feature 'View hit points' do 
  scenario ' See player 2 hit points' do 
  visit ('/')
  fill_in :player_1_name, with: 'Omar'
  fill_in :player_2_name, with: 'John'
  click_button 'Submit'
  expect(page).to have_content 'John: 100HP'
  end 
end