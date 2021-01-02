class AuthController < ApplicationController
  skip_before_action :require_login, only: [:create]

  # POST /auth
  def create
    user = User.find_by(email: params[:email])
    token = ''
    status = :unauthorized
    if user&.authenticate(params[:password])
      token = Session.create(user)
      status = :created
      cookies['token'] = { value: token, httponly: true }
    end
    render json: { token: token }, status: status
  end
end
