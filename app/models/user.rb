class User < ActiveRecord::Base

  def self.find_or_create_by_auth(auth_hash)
    self.where(provider: auth_hash[:provider], uid: auth_hash[:uid]).first_or_create do |user|
      
    end
  end

end
