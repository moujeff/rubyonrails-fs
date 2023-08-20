class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :switch_locale

  def switch_locale()
    locale = params[:locale] || I18n.default_locale

  end

  def current_ability
    @current_ability ||= Ability.new(current_admin)
  end

end
