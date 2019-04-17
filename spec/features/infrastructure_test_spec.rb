# feature 'Testing infrastructure' do
#  scenario 'checks what homepage says' do
#    visit('/')
#    expect(page).to have_content "Testing infrastructure working!"
#  end
# end

feature 'Players names' do
 scenario 'expects players to fill in their names then see it' do
   sign_in_play
   expect(page).to have_content "Leia vs Luke"
 end
end

feature 'Players HP' do
 scenario 'check player2s HP' do
   sign_in_play
   expect(page).to have_content "Luke's HP: 100"
 end
end
