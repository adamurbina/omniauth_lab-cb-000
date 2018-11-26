class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']

    user = User.find_by(uid: auth_hash['uid'])

    if !user.nil?
      session[:user_id] = user.id
    else
      user = User.find_or_create_by(auth_hash)
      # user = User.new(name: auth_hash[:info][:name], email: auth_hash[:info][:email], uid: auth_hash[:uid])
      user.save
      session[:user_id] = user.id
    end

  end

end
