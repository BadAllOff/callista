class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_locale

  protect_from_forgery with: :exception

  private

  def set_locale
    if params[:locale].present?
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash[:notice] = "#{params[:locale]} translation not available"
        logger.error flash[:notice]
      end
    elsif
    request.env['HTTP_ACCEPT_LANGUAGE'] == 'en'
      I18n.locale = 'en'
    end
    # Можно использовать для установленных пользователем языков в настройках Аккаунта
    # current_user.locale
    # request.env["HTTP_ACCEPT_LANGUAGE"]
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end
end
