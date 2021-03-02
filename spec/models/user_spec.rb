describe User do
  describe '.create' do
    it 'creates a new user' do
      user = described_class.create(name: 'name', email: 'email', password: 'password')

      expect(user.name).to eq('name')
      expect(user.email).to eq('email')
      expect(user.password).to eq('password')
    end
  end

  describe '.find' do
    it 'finds a user' do
      user = described_class.create(name: 'name', email: 'email', password: 'password')
      user2 = described_class.find(id: user.id)

      expect(user2.name).to eq(user.name)
      expect(user2.id).to eq(user.id)
      expect(user2.email).to eq(user.email)
    end
  end

  describe '.authenticate' do
    it 'returns the user on successful sign in' do
      user = described_class.create(name: 'name', email: 'email', password: 'password')
      authenticated = described_class.authenticate(email: 'email', password: 'password')

      expect(authenticated.id).to eq user.id
      expect(authenticated.name).to eq user.name
      expect(authenticated.email).to eq user.email
    end

    it 'returns nil for invalid email' do
      user = described_class.create(name: 'name', email: 'wrong_email', password: 'password')
      authenticated = described_class.authenticate(email: 'email', password: 'password')

      expect(authenticated).to be_nil
    end

    it 'returns nil for wrong password' do
      user = described_class.create(name: 'name', email: 'email', password: 'wrong_password')
      authenticated = described_class.authenticate(email: 'email', password: 'password')

      expect(authenticated).to be_nil
    end
  end
end
