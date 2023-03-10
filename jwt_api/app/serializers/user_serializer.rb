class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :token

  def token
    @instance_options[:token]
  end

  def password=(raw)
    @password = raw
    self.password_digest = BCrypt::Password.create(raw)      
  end

end
