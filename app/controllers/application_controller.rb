# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :info, :notice, :error, :warning
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name role])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name role])
  end
end
