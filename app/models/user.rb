class User < ActiveRecord::Base

  def self.find_or_create_by_auth(auth_hash)
    binding.pry
    self.where(uid: auth_hash[:uid]).first_or_create do |user|
      user.uid = auth_hash[:uid]
      user.provider = auth_hash[:provider]
      user.email = auth_hash[:info][:email]
      user.name = auth_hash[:info][:name]
    end
  end

end
