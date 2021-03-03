class User
  attr_reader :id, :name, :email, :password

  class << self
    def create(name:, email:, password:)
      user = DatabaseConnection.query("INSERT INTO users (name, email, password)
      VALUES ('#{name}', '#{email}', '#{password}') RETURNING *;")

      new(user[0]['id'], user[0]['name'], user[0]['email'], user[0]['password'])
    end

    def find(id:)
      user = DatabaseConnection.query("SELECT * FROM users WHERE id = #{id};")
      new(user[0]['id'], user[0]['name'], user[0]['email'], user[0]['password'])
    end

    def authenticate(email:, password:)
      result = DatabaseConnection.query("SELECT * FROM users
        WHERE email = '#{email}';").first
      return unless result
      return unless result['password'] == password

      new(result['id'], result['name'], result['email'], result['password'])
    end
  end

  def initialize(id, name, email, password)
    @id = id
    @name = name
    @email = email
    @password = password
  end
end
