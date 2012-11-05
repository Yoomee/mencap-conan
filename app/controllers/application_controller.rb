class ApplicationController < ActionController::Base
  
  protect_from_forgery

  # before_filter :authenticate
  before_filter :set_is_home

  
  AUTH_USERS = { "mencap_conan" => "mencap_conan123" }

  def set_is_home
    if controller_name == 'home'
      @is_home = true
    else
      @is_home = false
    end
  end
  
  private
  def authenticate
    return true unless Rails.env.production?
    authenticate_or_request_with_http_basic do |username|
      AUTH_USERS[username]
    end
     
  end

end