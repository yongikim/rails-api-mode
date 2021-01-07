class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::Cookies

  before_action :set_session
  before_action :require_login

  @session = {}

  def require_login
    render json: { error: 'unauthorized' }, status: :unauthorized if @session.empty?
  end

  def current_user
    @current_user ||= User.find(@session['user_id'])
  end

  private

  def set_session
    token = cookies['token']
    @session = Session.get(token)
  end
end
