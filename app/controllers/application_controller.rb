class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    customers_mypage_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :given_name, :family_name_kana, :given_name_kana, :address, :post_code, :phone_number, :is_deleted])
  end
end
