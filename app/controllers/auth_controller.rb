class AuthController < ApplicationController
  skip_before_action :require_login, only: [:create]

  # POST /auth
  def create
    user = User.find_by(email: params[:email])
    status = :unauthorized
    if user&.authenticate(params[:password])
      token = Session.create(user)
      status = :created
      cookies['token'] = { value: token, httponly: true }
    end
    render status: status
  end

  # GET /auth/user_id
  def user_id
    token = cookies['token']
    session = REDIS.hgetall(token)
    status = session['user_id'].present? ? :ok : :unauthorized

    render json: { user_id: session['user_id'] }, status: status
  end
end
