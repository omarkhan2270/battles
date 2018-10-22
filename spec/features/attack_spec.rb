feature 'Attacking' do
  scenario 'attack player 2' do
  sign_in_and_play
  click_link 'Attack'
  expect(page).to have_content 'Omar attacked John'
  end

  scenario 'reduce Player 2 HP by 20' do
  sign_in_and_play
  click_button 'Attack'
  click_link 'OK'
  expect(page).not_to have_content 'John: 100HP'
  expect(page).to have_content 'John: 80HP'
  end 
end