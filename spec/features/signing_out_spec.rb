feature 'signing out' do
  scenario 'return to index page after signing out' do
    User.create(name: 'Test', email: 'test@test.com', password: 'test123')

    visit '/'
    click_button 'Sign In'
    fill_in :email, with: 'test@test.com'
    fill_in :password, with: 'test123'
    click_button 'Sign In'

    expect(page).to have_content 'Hello Test!'
    expect(current_path).to eq '/spaces'

    click_button 'Sign Out'

    expect(page).not_to have_content 'Hello Test!'
    expect(page).to have_button 'Sign In'
    expect(current_path).to eq '/'
  end
end
