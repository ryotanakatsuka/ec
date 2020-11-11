class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:first_name_kana,:last_name_kana])
  end
  protect_from_forgery with: :exception
  helper_method :current_cart

  private

  def current_cart

    Cart.find(session[:cart_id])

    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
  end
end
