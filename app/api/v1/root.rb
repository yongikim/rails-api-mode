module V1
  class Root < Grape::API
    before { authenticate! }

    version :v1
    format :json

    @session = {}
    @current_user = nil

    helpers do
      def authenticate!
        error!('unauthorized', :unauthorized) unless current_user
      end

      def current_user
        @session = Session.get(cookies['token'])
        @current_user ||= User.find(@session['user_id']) unless @session.empty?
      end
    end

    mount V1::Auth
    mount V1::Users
    mount V1::Notes
  end
end
