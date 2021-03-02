feature 'user authentication' do
  scenario 'user greeted by name after successful sign in' do
    User.create(name: 'Test', email: 'test@test.com', password: 'Test123')

    visit '/'
    click_button 'Sign In'
    fill_in :email, with: 'test@test.com'
    fill_in :password, with: 'Test123'
    click_button 'Sign In'

    expect(page).to have_content 'Hello Test!'
    expect(page).not_to have_button 'Sign In'
    expect(page).not_to have_button 'Sign Up'
    expect(current_path).to eq '/spaces'
  end
end
