class User
  attr_reader :id, :name, :email, :password

  def self.create(name:, email:, password:)
    user = DatabaseConnection.query("INSERT INTO users (name, email, password)
    VALUES ('#{name}', '#{email}', '#{password}') RETURNING *;")

    new(user[0]['id'], user[0]['name'], user[0]['email'], user[0]['password'])
  end

  def self.find(id:)
    user = DatabaseConnection.query("SELECT * FROM users WHERE id = #{id};")
    new(user[0]['id'], user[0]['name'], user[0]['email'], user[0]['password'])
  end

  def initialize(id, name, email, password)
    @id = id
    @name = name
    @email = email
    @password = password
  end
end