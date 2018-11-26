class User < ActiveRecord::Base

  def self.find_or_create_by_auth(auth_hash)
    self.where
  end
  
end
