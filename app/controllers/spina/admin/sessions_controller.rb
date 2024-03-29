module Spina
  module Admin
    class SessionsController < AdminController
      skip_before_action :authenticate
      layout 'spina/admin/simple'

      def new
      end

      def create
        user = User.where(email: params[:email]).first
        if user && user.authenticate(params[:password])
          session[:spina_user_id] = user.id
          user.touch(:last_logged_in)
          redirect_to portal_dashboard_path
        else
          flash.now[:alert] = I18n.t('spina.notifications.wrong_username_or_password')
          render "new", status: :unprocessable_entity
        end
      end

      def destroy
        session.delete(:spina_user_id)
        redirect_to "/"
      end
    end
  end
end
