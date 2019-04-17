# feature 'Testing infrastructure' do
#  scenario 'checks what homepage says' do
#    visit('/')
#    expect(page).to have_content "Testing infrastructure working!"
#  end
# end

feature 'Players names' do
 scenario 'expects players to fill in their names then see it' do
   visit('/')
   fill_in('player1', with: 'Leia')
   fill_in('player2', with: 'Luke')
   click_button('Submit')
   expect(page).to have_content "Leia vs Luke"
 end
end
