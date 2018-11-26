class SessionsController < ApplicationController

  def create

    # auth_hash = request.env['omniauth.auth']

    # user = User.find_by(uid: auth_hash['uid'])
    user = User.find_or_create_by_auth(auth_hash)
    session[:user_id] = user.id

    # if !user.nil?
    #   session[:user_id] = user.id
    # else
    #   user = User.new(name: auth_hash[:info][:name], email: auth_hash[:info][:email], uid: auth_hash[:uid])
    #   user.save
    #   session[:user_id] = user.id
    # end

  end

  private

  def auth_hash
    auth_hash = request.env['omniauth_auth']
  end

end
