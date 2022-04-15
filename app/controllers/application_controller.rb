class ApplicationController < ActionController::Base

before_action :make_address_hash
before_action :configure_permitted_parameters, if: :devise_controller?

private

def make_address_hash
  @address = Address.all
end

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :encrypted_password, :address_id])
end

end
