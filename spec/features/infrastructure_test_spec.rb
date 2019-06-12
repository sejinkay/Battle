feature 'Players names' do
 scenario 'expects players to fill in their names then see it' do
   sign_in_play
   expect(page).to have_content "Leia vs Luke"
 end
end

feature 'Players HP' do
 scenario 'check player2s HP' do
   sign_in_play
   expect(page).to have_content "Luke's HP: 200"
 end
end

feature 'Player1 can attack player2' do
 scenario 'show confirmation that player1 can attack' do
   sign_in_play
   click_button('Attack')
   expect(page).to have_content "Leia attacked Luke!"
 end
end

feature 'Players HP' do
  scenario 'Reduces player2s HP by 10' do
    sign_in_play
    click_button('Attack')
    expect(page).to have_content('Luke\'s HP: 190')
  end
end

feature 'Result Message' do
  scenario 'See the result message when player HP is 0' do
    sign_in_play
    click_button('Attack')
    20.times { click_button('Keep Attack') }
    expect(page).to have_content('Luke is DEAD! Leia won!')
  end
end
