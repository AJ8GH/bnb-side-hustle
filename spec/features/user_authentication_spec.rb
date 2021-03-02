feature 'user authentication' do
  xscenario 'user greeted by name after successful sign in' do
    User.create(name: 'Test', email: 'test@test.com', password: 'Test123')

    visit '/'
    click_button 'Sign In'
    fill_in :email, with: 'Test'
  end
end
