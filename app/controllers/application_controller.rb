class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :switch_locale

  def switch_locale()
    locale = params[:locale] || I18n.default_locale

  end

end
