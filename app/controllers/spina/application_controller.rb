class Spina::ApplicationController < Spina.frontend_parent_controller.constantize
  include Spina.config.authentication.constantize
  include Spina::CurrentAccount, Spina::CurrentTheme

  helper Spina::Engine.helpers

  protect_from_forgery with: :exception

  def authorize_super
    raise "Permission denied" unless logged_in? && current_spina_user&.super_admin
  end
end
