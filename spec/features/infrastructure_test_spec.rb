# require 'app' <= no need for require?

feature 'Testing infrastructure' do
 scenario 'checks what homepage says' do
   visit('/')
   expect(page).to have_content "Testing infrastructure working!"
 end
end
