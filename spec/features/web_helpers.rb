def sign_in_play
  visit('/')
  fill_in('player1', with: 'Leia')
  fill_in('player2', with: 'Luke')
  click_button('Submit')
end
